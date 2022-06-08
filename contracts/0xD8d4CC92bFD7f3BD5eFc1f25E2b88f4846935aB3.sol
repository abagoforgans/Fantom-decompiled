contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_a1e8c173(?) = 10^16

const sub_f7655b29(?) = 20


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of struct baseURI;
address owner;
uint256 startingIndexBlock;
uint256 startingIndex;
uint256 sub_d6101ace;
uint8 saleIsActive;
uint256 stor14;
uint256 REVEAL_TIMESTAMP;

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
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function REVEAL_TIMESTAMP() {
    return REVEAL_TIMESTAMP
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

function startingIndex() {
    return startingIndex
}

function sub_d6101ace(?) {
    return sub_d6101ace
}

function startingIndexBlock() {
    return startingIndexBlock
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(uint8(saleIsActive))
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

function flipSaleState() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    uint256(stor14) = not uint8(saleIsActive) or Mask(248, 8, uint256(stor14))
}

function setRevealTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    REVEAL_TIMESTAMP = arg1
}

function emergencySetStartingIndexBlock() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if startingIndex:
        revert with 0, 'Starting index is already set'
    startingIndexBlock = block.number
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if arg1.length:
        baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        baseURI.length = 0
        idx = 0
        while baseURI.length + 31 / 32 > idx:
            baseURI[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setStartingIndex() {
    if startingIndex:
        revert with 0, 'Starting index is already set'
    if not startingIndexBlock:
        revert with 0, 'Starting index block must be set'
    require sub_d6101ace
    startingIndex = block.hash(startingIndexBlock) % sub_d6101ace
    if startingIndexBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - startingIndexBlock > 255:
        require sub_d6101ace
        startingIndex = block.hash(block.number - 1) % sub_d6101ace
    if not startingIndex:
        if startingIndex + 1 < startingIndex:
            revert with 0, 'SafeMath: addition overflow'
        startingIndex++
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
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
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
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var35001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 64], 
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
    return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function sub_b1e994ee(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    idx = 0
    while idx < 30:
        _421 = mem[64]
        mem[64] = mem[64] + 32
        mem[_421] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor2.length + idx]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length + idx]:
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            if stor3[stor2.length + idx]:
                require stor3[stor2.length + idx] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = msg.sender
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length + idx);
                if not ext_code.size(msg.sender):
                    idx = idx + 1
                    continue 
                _455 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length + idx
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _421 + 32]
                    s = s + 32
                    continue 
                _841 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_841 + 32] = mem[_841 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _455 + 292
                mem[_455 + 196] = 50
                mem[_455 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _870 = mem[_841]
                t = _841 + 32
                u = mem[64]
                s = mem[_841]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_841])] = mem[_841 + floor32(mem[_841]) + -(mem[_841] % 32) + 64 len mem[_841] % 32] or Mask(8 * -(mem[_841] % 32) + 32, -(8 * -(mem[_841] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_841])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _870 + _455 + -mem[64] + 288]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _1269 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_455 + 196]
                    _1271 = mem[_455 + 196]
                    if not mem[_455 + 196]:
                        if not mem[_455 + 196] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[_455 + 196] + 32]
                        mem[floor32(mem[_455 + 196]) + mem[64] + 68] = mem[floor32(mem[_455 + 196]) + mem[64] + -(mem[_455 + 196] % 32) + 100 len mem[_455 + 196] % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_1271) + 64]
                    mem[mem[64] + 68] = mem[_455 + 228]
                    idx = 32
                    while idx < _1271:
                        mem[idx + mem[64] + 68] = mem[idx + _455 + 228]
                        idx = idx + 32
                        continue 
                    if not _1271 % 32:
                        revert with memory
                          from mem[64]
                           len _1271 + _1269 + -mem[64] + 68
                    mem[floor32(_1271) + _1269 + 68] = mem[floor32(_1271) + _1269 + -(_1271 % 32) + 100 len _1271 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1271) + _1269 + -mem[64] + 100
                _1245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1245] = return_data.size
                mem[_1245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1245 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _1273 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_455 + 196]
                _1275 = mem[_455 + 196]
                if not mem[_455 + 196]:
                    if not mem[_455 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_455 + 196] + 32]
                    mem[floor32(mem[_455 + 196]) + mem[64] + 68] = mem[floor32(mem[_455 + 196]) + mem[64] + -(mem[_455 + 196] % 32) + 100 len mem[_455 + 196] % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_1275) + 64]
                mem[mem[64] + 68] = mem[_455 + 228]
                idx = 32
                while idx < _1275:
                    mem[idx + mem[64] + 68] = mem[idx + _455 + 228]
                    idx = idx + 32
                    continue 
                if not _1275 % 32:
                    revert with memory
                      from mem[64]
                       len _1275 + _1273 + -mem[64] + 68
                mem[floor32(_1275) + _1273 + 68] = mem[floor32(_1275) + _1273 + -(_1275 % 32) + 100 len _1275 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1275) + _1273 + -mem[64] + 100
            _433 = mem[64]
            mem[64] = mem[64] + 64
            mem[_433] = tokenByIndex.length + idx
            mem[_433 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            stor3[stor2.length + idx] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _449 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _421 + 32]
                s = s + 32
                continue 
            _845 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_845 + 32] = mem[_845 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _449 + 292
            mem[_449 + 196] = 50
            mem[_449 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _874 = mem[_845]
            s = _845 + 32
            t = _449 + 292
            idx = mem[_845]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[_449 + floor32(mem[_845]) + 292] = mem[_845 + -(mem[_845] % 32) + floor32(mem[_845]) + 64 len mem[_845] % 32] or Mask(8 * -(mem[_845] % 32) + 32, -(8 * -(mem[_845] % 32) + 32) + 256, mem[_449 + floor32(mem[_845]) + 292])
            call msg.sender.mem[_449 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_449 + 296 len _874 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_449 + 410 len 14]
                    s = 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_449 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_449 + 296] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _449 + 360] = mem[idx + _449 + 228]
                    idx = idx + 32
                    continue 
                mem[_449 + 392] = mem[_449 + 406 len 18]
                revert with 0, 32, 50, 0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_449 + 392]
            mem[64] = _449 + ceil32(return_data.size) + 293
            mem[_449 + 292] = return_data.size
            mem[_449 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_449 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_449 + ceil32(return_data.size) + 411 len 14]
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_449 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_449 + ceil32(return_data.size) + 297] = 32
            idx = 32
            while idx < 50:
                mem[idx + _449 + ceil32(return_data.size) + 361] = mem[idx + _449 + 228]
                idx = idx + 32
                continue 
            mem[_449 + ceil32(return_data.size) + 393] = mem[_449 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 
                        32,
                        50,
                        0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                        mem[_449 + ceil32(return_data.size) + 393]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length + idx
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length + idx] = tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        if stor3[stor2.length + idx]:
            require stor3[stor2.length + idx] - 1 < tokenByIndex.length
            mem[0] = 2
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = msg.sender
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_416 = 0
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _458 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _421 + 32]
                s = s + 32
                continue 
            _849 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_849 + 32] = mem[_849 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _458 + 292
            mem[_458 + 196] = 50
            mem[_458 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _878 = mem[_849]
            t = _849 + 32
            u = mem[64]
            s = mem[_849]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_849])] = mem[_849 + floor32(mem[_849]) + -(mem[_849] % 32) + 64 len mem[_849] % 32] or Mask(8 * -(mem[_849] % 32) + 32, -(8 * -(mem[_849] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_849])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _878 + _458 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _1301 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_458 + 196]
                _1303 = mem[_458 + 196]
                if not mem[_458 + 196]:
                    if not mem[_458 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_458 + 196] + 32]
                    mem[floor32(mem[_458 + 196]) + mem[64] + 68] = mem[floor32(mem[_458 + 196]) + mem[64] + -(mem[_458 + 196] % 32) + 100 len mem[_458 + 196] % 32]
                else:
                    mem[mem[64] + 68] = mem[_458 + 228]
                    idx = 32
                    while idx < _1303:
                        mem[idx + mem[64] + 68] = mem[idx + _458 + 228]
                        idx = idx + 32
                        continue 
                    if not _1303 % 32:
                        revert with memory
                          from mem[64]
                           len _1303 + _1301 + -mem[64] + 68
                    mem[floor32(_1303) + _1301 + 68] = mem[floor32(_1303) + _1301 + -(_1303 % 32) + 100 len _1303 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1303) + _1301 + -mem[64] + 100
            _1249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1249] = return_data.size
            mem[_1249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1249 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _1305 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_458 + 196]
            _1307 = mem[_458 + 196]
            if not mem[_458 + 196]:
                if not mem[_458 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_458 + 196] + 32]
                mem[floor32(mem[_458 + 196]) + mem[64] + 68] = mem[floor32(mem[_458 + 196]) + mem[64] + -(mem[_458 + 196] % 32) + 100 len mem[_458 + 196] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1307) + _1305 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_458 + 228]
            idx = 32
            while idx < _1307:
                mem[idx + mem[64] + 68] = mem[idx + _458 + 228]
                idx = idx + 32
                continue 
            if not _1307 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1307 + 32]
            mem[floor32(_1307) + mem[64] + 68] = mem[floor32(_1307) + mem[64] + -(_1307 % 32) + 100 len _1307 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1307) + 64]
        _438 = mem[64]
        mem[64] = mem[64] + 64
        mem[_438] = tokenByIndex.length + idx
        mem[_438 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        stor3[stor2.length + idx] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
        if not ext_code.size(msg.sender):
            idx = idx + 1
            continue 
        _452 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length + idx
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 196] = mem[s + _421 + 32]
            s = s + 32
            continue 
        _853 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_853 + 32] = mem[_853 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _452 + 292
        mem[_452 + 196] = 50
        mem[_452 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if not ext_code.size(msg.sender):
            revert with 0, 'Address: call to non-contract'
        _882 = mem[_853]
        s = _853 + 32
        t = mem[64]
        idx = mem[_853]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_853])] = mem[_853 + floor32(mem[_853]) + -(mem[_853] % 32) + 64 len mem[_853] % 32] or Mask(8 * -(mem[_853] % 32) + 32, -(8 * -(mem[_853] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_853])])
        call msg.sender.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _882 + _452 + -mem[64] + 288]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _1317 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_452 + 196]
            _1319 = mem[_452 + 196]
            if not mem[_452 + 196]:
                if not mem[_452 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_452 + 196] + 32]
                mem[floor32(mem[_452 + 196]) + mem[64] + 68] = mem[floor32(mem[_452 + 196]) + mem[64] + -(mem[_452 + 196] % 32) + 100 len mem[_452 + 196] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1319) + 64]
            mem[mem[64] + 68] = mem[_452 + 228]
            idx = 32
            while idx < _1319:
                mem[idx + mem[64] + 68] = mem[idx + _452 + 228]
                idx = idx + 32
                continue 
            if not _1319 % 32:
                revert with memory
                  from mem[64]
                   len _1319 + _1317 + -mem[64] + 68
            mem[floor32(_1319) + _1317 + 68] = mem[floor32(_1319) + _1317 + -(_1319 % 32) + 100 len _1319 % 32]
            revert with memory
              from mem[64]
               len floor32(_1319) + _1317 + -mem[64] + 100
        _1251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1251] = return_data.size
        mem[_1251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1251 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            s = 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _1321 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_452 + 196]
        _1323 = mem[_452 + 196]
        if not mem[_452 + 196]:
            if not mem[_452 + 196] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_452 + 196] + 32]
            mem[floor32(mem[_452 + 196]) + mem[64] + 68] = mem[floor32(mem[_452 + 196]) + mem[64] + -(mem[_452 + 196] % 32) + 100 len mem[_452 + 196] % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1323) + 64]
        mem[mem[64] + 68] = mem[_452 + 228]
        idx = 32
        while idx < _1323:
            mem[idx + mem[64] + 68] = mem[idx + _452 + 228]
            idx = idx + 32
            continue 
        if not _1323 % 32:
            revert with memory
              from mem[64]
               len _1323 + _1321 + -mem[64] + 68
        mem[floor32(_1323) + _1321 + 68] = mem[floor32(_1323) + _1321 + -(_1323 % 32) + 100 len _1323 % 32]
        revert with memory
          from mem[64]
           len floor32(_1323) + _1321 + -mem[64] + 100
}

function sub_ed1f91d7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not uint8(saleIsActive):
        revert with 0, 'Sale must be active to mint Brew'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e43616e206f6e6c79206d696e7420323020746f6b656e7320617420612074696d,
                    mem[197 len 31]
    if arg1 + tokenByIndex.length < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + tokenByIndex.length > sub_d6101ace:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72507572636861736520776f756c6420657863656564206d617820737570706c79206f662042726577,
                    mem[205 len 23]
    if 10^16 * arg1 / 10^16 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 10^16 * arg1 > msg.value:
        revert with 0, 'Ether value sent is not correct'
    idx = 0
    while idx < arg1:
        if tokenByIndex.length >= sub_d6101ace:
            idx = idx + 1
            continue 
        _429 = mem[64]
        mem[64] = mem[64] + 32
        mem[_429] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor2.length]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
            mem[0] = tokenByIndex.length
            mem[32] = 3
            if stor3[stor2.length]:
                require stor3[stor2.length] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if not ext_code.size(msg.sender):
                    idx = idx + 1
                    continue 
                _463 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _429 + 32]
                    s = s + 32
                    continue 
                _849 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_849 + 32] = mem[_849 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _463 + 292
                mem[_463 + 196] = 50
                mem[_463 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _878 = mem[_849]
                t = _849 + 32
                u = mem[64]
                s = mem[_849]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_849])] = mem[_849 + floor32(mem[_849]) + -(mem[_849] % 32) + 64 len mem[_849] % 32] or Mask(8 * -(mem[_849] % 32) + 32, -(8 * -(mem[_849] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_849])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _878 + _463 + -mem[64] + 288]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _1277 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_463 + 196]
                    _1279 = mem[_463 + 196]
                    if not mem[_463 + 196]:
                        if not mem[_463 + 196] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[_463 + 196] + 32]
                        mem[floor32(mem[_463 + 196]) + mem[64] + 68] = mem[floor32(mem[_463 + 196]) + mem[64] + -(mem[_463 + 196] % 32) + 100 len mem[_463 + 196] % 32]
                    else:
                        mem[mem[64] + 68] = mem[_463 + 228]
                        idx = 32
                        while idx < _1279:
                            mem[idx + mem[64] + 68] = mem[idx + _463 + 228]
                            idx = idx + 32
                            continue 
                        if not _1279 % 32:
                            revert with memory
                              from mem[64]
                               len _1279 + _1277 + -mem[64] + 68
                        mem[floor32(_1279) + _1277 + 68] = mem[floor32(_1279) + _1277 + -(_1279 % 32) + 100 len _1279 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1279) + _1277 + -mem[64] + 100
                _1253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1253] = return_data.size
                mem[_1253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1253 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _1281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_463 + 196]
                _1283 = mem[_463 + 196]
                if not mem[_463 + 196]:
                    if not mem[_463 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_463 + 196] + 32]
                    mem[floor32(mem[_463 + 196]) + mem[64] + 68] = mem[floor32(mem[_463 + 196]) + mem[64] + -(mem[_463 + 196] % 32) + 100 len mem[_463 + 196] % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1283) + _1281 + -mem[64] + 100
                mem[mem[64] + 68] = mem[_463 + 228]
                idx = 32
                while idx < _1283:
                    mem[idx + mem[64] + 68] = mem[idx + _463 + 228]
                    idx = idx + 32
                    continue 
                if not _1283 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _1283 + 32]
                mem[floor32(_1283) + mem[64] + 68] = mem[floor32(_1283) + mem[64] + -(_1283 % 32) + 100 len _1283 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1283) + 64]
            _441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_441] = tokenByIndex.length
            mem[_441 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length
            mem[32] = 3
            stor3[stor2.length] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _457 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _429 + 32]
                s = s + 32
                continue 
            _853 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_853 + 32] = mem[_853 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _457 + 292
            mem[_457 + 196] = 50
            mem[_457 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _882 = mem[_853]
            s = _853 + 32
            t = mem[64]
            idx = mem[_853]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_853])] = mem[_853 + floor32(mem[_853]) + -(mem[_853] % 32) + 64 len mem[_853] % 32] or Mask(8 * -(mem[_853] % 32) + 32, -(8 * -(mem[_853] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_853])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _882 + _457 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    s = 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _1293 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_457 + 196]
                _1295 = mem[_457 + 196]
                if not mem[_457 + 196]:
                    if not mem[_457 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_457 + 196] + 32]
                    mem[floor32(mem[_457 + 196]) + mem[64] + 68] = mem[floor32(mem[_457 + 196]) + mem[64] + -(mem[_457 + 196] % 32) + 100 len mem[_457 + 196] % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1295) + _1293 + -mem[64] + 100
                mem[mem[64] + 68] = mem[_457 + 228]
                idx = 32
                while idx < _1295:
                    mem[idx + mem[64] + 68] = mem[idx + _457 + 228]
                    idx = idx + 32
                    continue 
                if not _1295 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _1295 + 32]
                mem[floor32(_1295) + mem[64] + 68] = mem[floor32(_1295) + mem[64] + -(_1295 % 32) + 100 len _1295 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1295) + 64]
            _1255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1255] = return_data.size
            mem[_1255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1255 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _1297 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_457 + 196]
            _1299 = mem[_457 + 196]
            if not mem[_457 + 196]:
                if not mem[_457 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_457 + 196] + 32]
                mem[floor32(mem[_457 + 196]) + mem[64] + 68] = mem[floor32(mem[_457 + 196]) + mem[64] + -(mem[_457 + 196] % 32) + 100 len mem[_457 + 196] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1299) + _1297 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_457 + 228]
            idx = 32
            while idx < _1299:
                mem[idx + mem[64] + 68] = mem[idx + _457 + 228]
                idx = idx + 32
                continue 
            if not _1299 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1299 + 32]
            mem[floor32(_1299) + mem[64] + 68] = mem[floor32(_1299) + mem[64] + -(_1299 % 32) + 100 len _1299 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1299) + 64]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenByIndex.length
        mem[32] = 3
        if stor3[stor2.length]:
            require stor3[stor2.length] - 1 < tokenByIndex.length
            mem[0] = 2
            tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
            tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _466 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _429 + 32]
                s = s + 32
                continue 
            _857 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_857 + 32] = mem[_857 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _466 + 292
            mem[_466 + 196] = 50
            mem[_466 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _886 = mem[_857]
            t = _857 + 32
            u = mem[64]
            s = mem[_857]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_857])] = mem[_857 + floor32(mem[_857]) + -(mem[_857] % 32) + 64 len mem[_857] % 32] or Mask(8 * -(mem[_857] % 32) + 32, -(8 * -(mem[_857] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_857])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _886 + _466 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _1309 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_466 + 196]
                _1311 = mem[_466 + 196]
                if not mem[_466 + 196]:
                    if not mem[_466 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_466 + 196] + 32]
                    mem[floor32(mem[_466 + 196]) + mem[64] + 68] = mem[floor32(mem[_466 + 196]) + mem[64] + -(mem[_466 + 196] % 32) + 100 len mem[_466 + 196] % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1311) + _1309 + -mem[64] + 100
                mem[mem[64] + 68] = mem[_466 + 228]
                idx = 32
                while idx < _1311:
                    mem[idx + mem[64] + 68] = mem[idx + _466 + 228]
                    idx = idx + 32
                    continue 
                if not _1311 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _1311 + 32]
                mem[floor32(_1311) + mem[64] + 68] = mem[floor32(_1311) + mem[64] + -(_1311 % 32) + 100 len _1311 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1311) + 64]
            _1257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1257] = return_data.size
            mem[_1257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1257 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _1313 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_466 + 196]
            _1315 = mem[_466 + 196]
            if not mem[_466 + 196]:
                if not mem[_466 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_466 + 196] + 32]
                mem[floor32(mem[_466 + 196]) + mem[64] + 68] = mem[floor32(mem[_466 + 196]) + mem[64] + -(mem[_466 + 196] % 32) + 100 len mem[_466 + 196] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1315) + _1313 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_466 + 228]
            idx = 32
            while idx < _1315:
                mem[idx + mem[64] + 68] = mem[idx + _466 + 228]
                idx = idx + 32
                continue 
            if not _1315 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1315 + 32]
            mem[floor32(_1315) + mem[64] + 68] = mem[floor32(_1315) + mem[64] + -(_1315 % 32) + 100 len _1315 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1315) + 64]
        _446 = mem[64]
        mem[64] = mem[64] + 64
        mem[_446] = tokenByIndex.length
        mem[_446 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length
        mem[32] = 3
        stor3[stor2.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if not ext_code.size(msg.sender):
            idx = idx + 1
            continue 
        _460 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 196] = mem[s + _429 + 32]
            s = s + 32
            continue 
        _861 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_861 + 32] = mem[_861 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _460 + 292
        mem[_460 + 196] = 50
        mem[_460 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if not ext_code.size(msg.sender):
            revert with 0, 'Address: call to non-contract'
        _890 = mem[_861]
        s = _861 + 32
        t = mem[64]
        idx = mem[_861]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_861])] = mem[_861 + floor32(mem[_861]) + -(mem[_861] % 32) + 64 len mem[_861] % 32] or Mask(8 * -(mem[_861] % 32) + 32, -(8 * -(mem[_861] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_861])])
        call msg.sender.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _890 + _460 + -mem[64] + 288]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _1325 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_460 + 196]
            _1327 = mem[_460 + 196]
            if not mem[_460 + 196]:
                if not mem[_460 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_460 + 196] + 32]
                mem[floor32(mem[_460 + 196]) + mem[64] + 68] = mem[floor32(mem[_460 + 196]) + mem[64] + -(mem[_460 + 196] % 32) + 100 len mem[_460 + 196] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1327) + _1325 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_460 + 228]
            idx = 32
            while idx < _1327:
                mem[idx + mem[64] + 68] = mem[idx + _460 + 228]
                idx = idx + 32
                continue 
            if not _1327 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1327 + 32]
            mem[floor32(_1327) + mem[64] + 68] = mem[floor32(_1327) + mem[64] + -(_1327 % 32) + 100 len _1327 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1327) + 64]
        _1259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1259] = return_data.size
        mem[_1259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1259 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            s = 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _1329 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_460 + 196]
        _1331 = mem[_460 + 196]
        if not mem[_460 + 196]:
            if not mem[_460 + 196] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_460 + 196] + 32]
            mem[floor32(mem[_460 + 196]) + mem[64] + 68] = mem[floor32(mem[_460 + 196]) + mem[64] + -(mem[_460 + 196] % 32) + 100 len mem[_460 + 196] % 32]
            revert with memory
              from mem[64]
               len floor32(_1331) + _1329 + -mem[64] + 100
        mem[mem[64] + 68] = mem[_460 + 228]
        idx = 32
        while idx < _1331:
            mem[idx + mem[64] + 68] = mem[idx + _460 + 228]
            idx = idx + 32
            continue 
        if not _1331 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1331 + 32]
        mem[floor32(_1331) + mem[64] + 68] = mem[floor32(_1331) + mem[64] + -(_1331 % 32) + 100 len _1331 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1331) + 64]
    if not startingIndexBlock:
        if tokenByIndex.length == sub_d6101ace:
            startingIndexBlock = block.number
        else:
            if block.timestamp >= REVEAL_TIMESTAMP:
                startingIndexBlock = block.number
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor3[arg3] - 1].field_256:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
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
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                mem[896 len 4] = 0
                mem[868 len 0] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 827 len 14]
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg3
            tokenByIndex[tokenByIndex.length].field_256 = arg2
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor3[arg3] = tokenByIndex.length
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                mem[960 len 4] = 0
                mem[932 len 0] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
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
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    mem[868 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[960 len 4] = 0
                    mem[932 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
                require tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
                tokenOfOwnerByIndex[address(arg1)]--
                tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
}



}
