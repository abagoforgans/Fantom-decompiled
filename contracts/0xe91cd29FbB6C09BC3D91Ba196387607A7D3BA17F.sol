contract main {




// =====================  Runtime code  =====================


#
#  - mintNFT(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const MAX_SUPPLY = 10000


mapping of uint8 stor0;
uint8 stor1;
mapping of struct punksOfferedForSale;
mapping of struct punkBids;
mapping of uint256 pendingWithdrawals;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor8;
mapping of address approved;
mapping of uint8 stor10;
array of uint256 name;
array of uint256 symbol;
array of struct baseURI;
address owner;
address stor17;
address stor18;
uint256 punksRemainingToAssign;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor8[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function punksOfferedForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(punksOfferedForSale[arg1].field_0), 
           punksOfferedForSale[arg1].field_256,
           punksOfferedForSale[arg1].field_512,
           punksOfferedForSale[arg1].field_768,
           punksOfferedForSale[arg1].field_1024
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function marketPaused() {
    return bool(stor1)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor8[arg1] - 1].field_256
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function punkBids(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(punkBids[arg1].field_0), punkBids[arg1].field_256, punkBids[arg1].field_512, punkBids[arg1].field_768
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

function punksRemainingToAssign() {
    return punksRemainingToAssign
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor10[address(arg1)][address(arg2)])
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function pauseMarket(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = uint8(arg1)
}

function withdraw() {
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas gas_remaining wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor10[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getNFTPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        return 0
    require arg1
    if 125 * 10^18 * arg1 / arg1 != 125 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (125 * 10^18 * arg1)
}

function changeBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function withdrawBidForPunk(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= 10000:
        revert with 0, 'Out'
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 == msg.sender:
        revert with 0, 'Invalid'
    if punkBids[arg1].field_512 != msg.sender:
        revert with 0, 'Invalid'
    punkBids[arg1].field_0 = 0
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = 0
    punkBids[arg1].field_768 = 0
    punkBids[arg1].field_768 = 0
    call msg.sender with:
       value punkBids[arg1].field_768 wei
         gas gas_remaining wei
    require ext_call.success
}

function punkNoLongerForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    punksOfferedForSale[arg1].field_0 = 0
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = 0
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
}

function offerPunkForSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    if stor1:
        revert with 0, 'Market Paused'
    punksOfferedForSale[arg1].field_0 = 1
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = arg2
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
}

function enterBidForPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1:
        revert with 0, 'Market Paused'
    if arg1 >= 10000:
        revert with 0, 'Out'
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 == msg.sender:
        revert with 0, 'Invalid'
    if msg.value <= 0:
        revert with 0, 'bid can not be zero'
    if msg.value <= punkBids[arg1].field_768:
        revert with 0, 'Invalid'
    if punkBids[arg1].field_768 > 0:
        pendingWithdrawals[stor4[arg1].field_512] += punkBids[arg1].field_768
    punkBids[arg1].field_0 = 1
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = msg.sender
    punkBids[arg1].field_768 = msg.value
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor8[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor8[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor8[arg2] - 1].field_256 != msg.sender:
        if not stor10[stor7[stor8[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor8[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor8[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor8[arg2] - 1].field_256, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor8[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor8[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg3] - 1].field_256 != msg.sender:
        if not stor8[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor10[stor7[stor8[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor8[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor8[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor8[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor8[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor8[arg3] - 1].field_256, 0, arg3);
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
    if stor8[arg3]:
        require stor8[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
        tokenByIndex[stor8[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor8[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 8
    if not stor8[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = baseURI.length
    mem[0] = 14
    mem[128] = uint256(baseURI.field_0)
    idx = 128
    s = 0
    while baseURI.length + 96 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[64] = ceil32(baseURI.length) + 192
        mem[ceil32(baseURI.length) + 128] = 1
        mem[ceil32(baseURI.length) + 160] = '0'
        mem[ceil32(baseURI.length) + 224 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
        mem[ceil32(baseURI.length) + floor32(baseURI.length) + 224] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(baseURI.length) + floor32(baseURI.length) + 224])
        mem[baseURI.length + ceil32(baseURI.length) + 224 len 0] = None
        mem[baseURI.length + ceil32(baseURI.length) + 225] = '.json'
        mem[baseURI.length + ceil32(baseURI.length) + 230] = 32
        mem[baseURI.length + ceil32(baseURI.length) + 262] = mem[ceil32(baseURI.length) + 192]
        mem[baseURI.length + ceil32(baseURI.length) + 294 len ceil32(mem[ceil32(baseURI.length) + 192])] = mem[ceil32(baseURI.length) + 224 len ceil32(mem[ceil32(baseURI.length) + 192])]
        var33001 = ceil32(mem[ceil32(baseURI.length) + 192])
        if not mem[ceil32(baseURI.length) + 192] % 32:
            return 32, mem[baseURI.length + ceil32(baseURI.length) + 262 len mem[ceil32(baseURI.length) + 192] + 32]
        mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + 294] = mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + -(mem[ceil32(baseURI.length) + 192] % 32) + 326 len mem[ceil32(baseURI.length) + 192] % 32]
        return Array(len=mem[ceil32(baseURI.length) + 192], data=mem[baseURI.length + ceil32(baseURI.length) + 294 len floor32(mem[ceil32(baseURI.length) + 192]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(baseURI.length) + 128] = s
    mem[64] = ceil32(baseURI.length) + ceil32(s) + 160
    if s:
        mem[ceil32(baseURI.length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(baseURI.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(baseURI.length) + ceil32(s) + 192 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
    mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 224 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
    mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 192 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
    mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 224 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 192] = '.json'
    mem[64] = s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 197
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 197] = 32
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 229] = mem[ceil32(baseURI.length) + ceil32(s) + 160]
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 261 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 160])] = mem[ceil32(baseURI.length) + ceil32(s) + 192 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 160])]
    if not mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32:
        return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 229 len mem[ceil32(baseURI.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 261] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32) + 293 len mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32]
    return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 229 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + 64], 
}

function acceptBidForPunk(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    if stor1:
        revert with 0, 'Market Paused'
    if punkBids[arg1].field_768 <= 0:
        revert with 0, 'there is not any bid'
    if punkBids[arg1].field_768 < arg2:
        revert with 0, 'Invalid'
    punkBids[arg1].field_0 = 0
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = 0
    punkBids[arg1].field_768 = 0
    punkBids[arg1].field_768 = 0
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[553 len 23],
                    mem[599 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[685 len 23]
    if not punkBids[arg1].field_512:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[680 len 28]
    approved[arg1] = 0
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[649 len 23],
                    mem[695 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor8[arg1] - 1].field_256, 0, arg1);
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        if tokenOfOwnerByIndex[stor4[arg1].field_512][1][arg1]:
            if stor8[arg1]:
                require stor8[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor8[arg1] - 1].field_256 = punkBids[arg1].field_512
                tokenByIndex[stor8[arg1] - 1].field_416 = 0
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[964 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
                    mem[1152 len 4] = 0
                    mem[1124 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1124 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 800
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[950 len 14],
                                    Mask(144, -256, mem[950 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[996]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1083 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg1] = tokenByIndex.length
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1028 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    mem[1188 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1188 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 800
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1014 len 14],
                                    Mask(144, -256, mem[1014 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1147 len 14]
        else:
            tokenOfOwnerByIndex[stor4[arg1].field_512]++
            tokenOfOwnerByIndex[stor4[arg1].field_512][tokenOfOwnerByIndex[stor4[arg1].field_512]] = arg1
            tokenOfOwnerByIndex[stor4[arg1].field_512][1][arg1] = tokenOfOwnerByIndex[stor4[arg1].field_512]
            if stor8[arg1]:
                require stor8[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor8[arg1] - 1].field_256 = punkBids[arg1].field_512
                tokenByIndex[stor8[arg1] - 1].field_416 = 0
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[964 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
                    mem[1152 len 4] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1124 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[950 len 14]
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[950 len 14],
                                    Mask(144, -256, mem[950 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[996]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1083 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg1] = tokenByIndex.length
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1028 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1188 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[1014 len 14]
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1014 len 14],
                                    Mask(144, -256, mem[1014 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1147 len 14]
    else:
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)][1][arg1] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)][1][arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)][1][tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(msg.sender)][1][arg1]
        require tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
        tokenOfOwnerByIndex[address(msg.sender)]--
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = 0
        if not tokenOfOwnerByIndex[stor4[arg1].field_512][1][arg1]:
            tokenOfOwnerByIndex[stor4[arg1].field_512]++
            tokenOfOwnerByIndex[stor4[arg1].field_512][tokenOfOwnerByIndex[stor4[arg1].field_512]] = arg1
            tokenOfOwnerByIndex[stor4[arg1].field_512][1][arg1] = tokenOfOwnerByIndex[stor4[arg1].field_512]
        if stor8[arg1]:
            require stor8[arg1] - 1 < tokenByIndex.length
            tokenByIndex[stor8[arg1] - 1].field_256 = punkBids[arg1].field_512
            tokenByIndex[stor8[arg1] - 1].field_416 = 0
            emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
            if ext_code.size(punkBids[arg1].field_512) > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                if ext_code.size(punkBids[arg1].field_512) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[964 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
                mem[1152 len 4] = 0
                mem[1124 len 0] = 0
                call punkBids[arg1].field_512.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1124 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 800
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[950 len 14],
                                Mask(144, -256, mem[950 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[996]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1083 len 14]
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg1
            tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor8[arg1] = tokenByIndex.length
            emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
            if ext_code.size(punkBids[arg1].field_512) > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
                if ext_code.size(punkBids[arg1].field_512) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[1028 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
                mem[1216 len 4] = 0
                mem[1188 len 0] = 0
                call punkBids[arg1].field_512.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1188 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0) << 800
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[1014 len 14],
                                Mask(144, -256, mem[1014 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1147 len 14]
    pendingWithdrawals[address(msg.sender)] += 94 * punkBids[arg1].field_768 / 100
    call stor18 with:
       value 6 * punkBids[arg1].field_768 / 100 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor17 with:
       value 6 * punkBids[arg1].field_768 / 100 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = punksOfferedForSale[arg1].field_256
    mem[160] = punksOfferedForSale[arg1].field_512
    mem[192] = punksOfferedForSale[arg1].field_768
    mem[224] = punksOfferedForSale[arg1].field_1024
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not punksOfferedForSale[arg1].field_0:
        revert with 0, 'No Sale'
    if not punksOfferedForSale[arg1].field_1024:
        if msg.value < punksOfferedForSale[arg1].field_768:
            revert with 0, 'Insufficient amount'
        mem[256] = 41
        mem[288 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor8[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[329 len 23],
                        mem[375 len 9]
        require stor8[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor8[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
            revert with 0, 'Not seller'
        mem[352] = 0
        mem[384] = 41
        mem[416 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor8[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[457 len 23],
                        mem[503 len 9]
        require stor8[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor8[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
            revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
        if not msg.sender:
            revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
        approved[arg1] = 0
        mem[480] = 41
        mem[512 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor8[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[553 len 23],
                        mem[599 len 9]
        require stor8[arg1] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor8[arg1] - 1].field_256, 0, arg1);
        if not tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]:
            if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                if stor8[arg1]:
                    require stor8[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor8[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor8[arg1] - 1].field_416 = 0
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = unknown_0x150b7a02(?????)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor8[arg1] = tokenByIndex.length
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = unknown_0x150b7a02(?????)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
                if stor8[arg1]:
                    require stor8[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor8[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor8[arg1] - 1].field_416 = 0
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = unknown_0x150b7a02(?????)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14]
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor8[arg1] = tokenByIndex.length
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = unknown_0x150b7a02(?????)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
        else:
            require tokenOfOwnerByIndex[stor3[arg1].field_512] - 1 < tokenOfOwnerByIndex[stor3[arg1].field_512]
            require tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] - 1 < tokenOfOwnerByIndex[stor3[arg1].field_512]
            tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]] = tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]]
            tokenOfOwnerByIndex[stor3[arg1].field_512][1][tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]]] = tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]
            require tokenOfOwnerByIndex[stor3[arg1].field_512]
            tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]] = 0
            tokenOfOwnerByIndex[stor3[arg1].field_512]--
            tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] = 0
            if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                if stor8[arg1]:
                    require stor8[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor8[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor8[arg1] - 1].field_416 = 0
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = unknown_0x150b7a02(?????)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor8[arg1] = tokenByIndex.length
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = unknown_0x150b7a02(?????)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
                if stor8[arg1]:
                    require stor8[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor8[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor8[arg1] - 1].field_416 = 0
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = unknown_0x150b7a02(?????)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14]
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor8[arg1] = tokenByIndex.length
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = unknown_0x150b7a02(?????)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(punksOfferedForSale[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14]
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
    else:
        if punksOfferedForSale[arg1].field_1024 != msg.sender:
            revert with 0, 'Unable to sell'
        if msg.value < punksOfferedForSale[arg1].field_768:
            revert with 0, 'Insufficient amount'
        mem[256] = 41
        mem[288 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor8[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[329 len 23],
                        mem[375 len 9]
        require stor8[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor8[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
            revert with 0, 'Not seller'
        mem[352] = 0
        mem[384] = 41
        mem[416 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor8[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[457 len 23],
                        mem[503 len 9]
        require stor8[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor8[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
            revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
        if not msg.sender:
            revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
        approved[arg1] = 0
        mem[480] = 41
        mem[512 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor8[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[553 len 23],
                        mem[599 len 9]
        require stor8[arg1] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor8[arg1] - 1].field_256, 0, arg1);
        if tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]:
            require tokenOfOwnerByIndex[stor3[arg1].field_512] - 1 < tokenOfOwnerByIndex[stor3[arg1].field_512]
            require tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] - 1 < tokenOfOwnerByIndex[stor3[arg1].field_512]
            tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]] = tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]]
            tokenOfOwnerByIndex[stor3[arg1].field_512][1][tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]]] = tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]
            require tokenOfOwnerByIndex[stor3[arg1].field_512]
            tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]] = 0
            tokenOfOwnerByIndex[stor3[arg1].field_512]--
            tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] = 0
        if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
            if stor8[arg1]:
                require stor8[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor8[arg1] - 1].field_256 = msg.sender
                tokenByIndex[stor8[arg1] - 1].field_416 = 0
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender) > 0:
                    mem[612] = msg.sender
                    mem[644] = punksOfferedForSale[arg1].field_512
                    mem[676] = arg1
                    mem[708] = 128
                    mem[740] = 0
                    mem[772 len 0] = None
                    mem[576] = 164
                    mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[608 len 4] = unknown_0x150b7a02(?????)
                    mem[772] = 50
                    mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[868 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1056 len 4] = 0
                    mem[1028 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if bool(punksOfferedForSale[arg1].field_0) > 0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14],
                                        Mask(144, -256, mem[854 len 14]) << 256
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14],
                                        Mask(144, -256, mem[854 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 987 len 14]
            else:
                mem[576] = arg1
                mem[608] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg1] = tokenByIndex.length
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender) > 0:
                    mem[676] = msg.sender
                    mem[708] = punksOfferedForSale[arg1].field_512
                    mem[740] = arg1
                    mem[772] = 128
                    mem[804] = 0
                    mem[836 len 0] = None
                    mem[640] = 164
                    mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[672 len 4] = unknown_0x150b7a02(?????)
                    mem[836] = 50
                    mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[932 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1120 len 4] = 0
                    mem[1092 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if bool(punksOfferedForSale[arg1].field_0) > 0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14],
                                        Mask(144, -256, mem[918 len 14]) << 256
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14],
                                        Mask(144, -256, mem[918 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 1051 len 14]
        else:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
            tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor8[arg1]:
                require stor8[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor8[arg1] - 1].field_256 = msg.sender
                tokenByIndex[stor8[arg1] - 1].field_416 = 0
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender) > 0:
                    mem[612] = msg.sender
                    mem[644] = punksOfferedForSale[arg1].field_512
                    mem[676] = arg1
                    mem[708] = 128
                    mem[740] = 0
                    mem[772 len 0] = None
                    mem[576] = 164
                    mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[608 len 4] = unknown_0x150b7a02(?????)
                    mem[772] = 50
                    mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[868 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1056 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1028 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if bool(punksOfferedForSale[arg1].field_0) > 0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14],
                                        Mask(144, -256, mem[854 len 14]) << 256
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14]
                    else:
                        mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14],
                                        Mask(144, -256, mem[854 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 987 len 14]
            else:
                mem[576] = arg1
                mem[608] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg1] = tokenByIndex.length
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender) > 0:
                    mem[676] = msg.sender
                    mem[708] = punksOfferedForSale[arg1].field_512
                    mem[740] = arg1
                    mem[772] = 128
                    mem[804] = 0
                    mem[836 len 0] = None
                    mem[640] = 164
                    mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[672 len 4] = unknown_0x150b7a02(?????)
                    mem[836] = 50
                    mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[932 len 160] = unknown_0x150b7a02(?????), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1120 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1092 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if bool(punksOfferedForSale[arg1].field_0) > 0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14],
                                        Mask(144, -256, mem[918 len 14]) << 256
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14]
                    else:
                        mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14],
                                        Mask(144, -256, mem[918 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 1051 len 14]
    pendingWithdrawals[stor3[arg1].field_512] += 94 * msg.value / 100
    call stor18 with:
       value 6 * msg.value / 100 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor17 with:
       value 6 * msg.value / 100 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor8[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor8[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor8[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor8[arg3] - 1].field_256:
        if not stor8[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor8[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor8[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor8[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor8[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor8[arg3] - 1].field_256, 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor8[arg3]:
                require stor8[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                tokenByIndex[stor8[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    mem[868 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                    if ext_code.size(arg2) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[960 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[932 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                if stor8[arg3]:
                    require stor8[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor8[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor8[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
            else:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor8[arg3]:
                    require stor8[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor8[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor8[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor8[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor8[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor8[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor8[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor8[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor8[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor8[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor10[stor7[stor8[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor8[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor8[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor8[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor8[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor8[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor8[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor8[arg3]:
                        require stor8[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor8[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor8[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor8[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
}



}
