contract main {




// =====================  Runtime code  =====================


#
#  - buyPunk(uint256 arg1)
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
mapping of uint256 stor16;
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
    if 100 * 10^18 * arg1 / arg1 != 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (100 * 10^18 * arg1)
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
        mem[64] = baseURI.length + ceil32(baseURI.length) + 230
        mem[baseURI.length + ceil32(baseURI.length) + 230] = 32
        mem[baseURI.length + ceil32(baseURI.length) + 262] = mem[ceil32(baseURI.length) + 192]
        mem[baseURI.length + ceil32(baseURI.length) + 294 len ceil32(mem[ceil32(baseURI.length) + 192])] = mem[ceil32(baseURI.length) + 224 len ceil32(mem[ceil32(baseURI.length) + 192])]
        var33001 = ceil32(mem[ceil32(baseURI.length) + 192])
        if not mem[ceil32(baseURI.length) + 192] % 32:
            return 32, mem[baseURI.length + ceil32(baseURI.length) + 262 len mem[ceil32(baseURI.length) + 192] + 32]
        mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + 294] = mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + -(mem[ceil32(baseURI.length) + 192] % 32) + 326 len mem[ceil32(baseURI.length) + 192] % 32]
        return 32, mem[baseURI.length + ceil32(baseURI.length) + 262 len floor32(mem[ceil32(baseURI.length) + 192]) + 64]
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
    punksOfferedForSale[arg1].field_0 = 0
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = punkBids[arg1].field_512
    punksOfferedForSale[arg1].field_768 = 0
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[713 len 23],
                    mem[759 len 9]
    require stor8[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor8[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[845 len 23]
    if not punkBids[arg1].field_512:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[840 len 28]
    approved[arg1] = 0
    if not stor8[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[809 len 23],
                    mem[855 len 9]
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
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1230 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1124 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1312 len 4] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1284 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[1110 len 14]
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1110 len 14],
                                    Mask(144, -256, mem[1110 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1156]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1243 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg1] = tokenByIndex.length
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1294 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1188 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1376 len 4] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1348 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[1174 len 14]
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1220 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1174 len 14],
                                    Mask(144, -256, mem[1174 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1220]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1307 len 14]
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
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1230 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1124 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1312 len 4] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1284 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[1110 len 14]
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1110 len 14],
                                    Mask(144, -256, mem[1110 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1156]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1243 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor8[arg1] = tokenByIndex.length
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1294 len 26]
                    if ext_code.size(punkBids[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1188 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1376 len 4] = 0
                    mem[1348 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1348 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0) << 800
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1220 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1174 len 14],
                                    Mask(144, -256, mem[1174 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1220]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1307 len 14]
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
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1230 len 26]
                if ext_code.size(punkBids[arg1].field_512) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[1124 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0
                mem[1312 len 4] = 0
                call punkBids[arg1].field_512.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[1284 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1110 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[1110 len 14],
                                Mask(144, -256, mem[1110 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[1156]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1243 len 14]
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg1
            tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor8[arg1] = tokenByIndex.length
            emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
            if ext_code.size(punkBids[arg1].field_512) > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1294 len 26]
                if ext_code.size(punkBids[arg1].field_512) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[1188 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, msg.sender, arg1, 128, 0
                mem[1376 len 4] = 0
                call punkBids[arg1].field_512.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[1348 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1174 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[1220 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[1174 len 14],
                                Mask(144, -256, mem[1174 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[1220]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1307 len 14]
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

function sub_20816b1a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        punksRemainingToAssign--
        require idx < mem[(32 * arg1.length) + 128]
        stor16[stor19 - 1] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + 128]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
        stor16[mem[(32 * idx) + (32 * arg1.length) + 160]] = punksRemainingToAssign - 1
        require idx < mem[96]
        _396 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _398 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _399 = mem[64]
        mem[64] = mem[64] + 32
        mem[_399] = 0
        if not address(_396):
            revert with 0, 'ERC721: mint to the zero address'
        if stor8[_398]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(_396)][1][_398]:
            mem[0] = _398
            mem[32] = 8
            if stor8[_398]:
                require stor8[_398] - 1 < tokenByIndex.length
                mem[0] = 7
                tokenByIndex[stor8[_398] - 1].field_256 = address(_396)
                tokenByIndex[stor8[_398] - 1].field_416 = 0
                emit Transfer(0, address(_396), _398);
                if ext_code.size(address(_396)) <= 0:
                    idx = idx + 1
                    continue 
                _437 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = _398
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_399 + s + 32]
                    s = s + 32
                    continue 
                _775 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_775 + 32] = mem[_775 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _437 + 292
                mem[_437 + 196] = 50
                mem[_437 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_437 + 398 len 26]
                if ext_code.size(address(_396)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _820 = mem[_775]
                t = _775 + 32
                u = _437 + 292
                s = mem[_775]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_437 + floor32(mem[_775]) + 292] = mem[_775 + -(mem[_775] % 32) + floor32(mem[_775]) + 64 len mem[_775] % 32] or Mask(8 * -(mem[_775] % 32) + 32, -(8 * -(mem[_775] % 32) + 32) + 256, mem[_437 + floor32(mem[_775]) + 292])
                call address(_396).mem[_437 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_437 + 296 len _820 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_437 + 410 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_437 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_437 + 296] = 32
                    mem[_437 + 328] = 50
                    idx = 0
                    while idx < 50:
                        mem[_437 + idx + 360] = mem[_437 + idx + 228]
                        idx = idx + 32
                        continue 
                    mem[_437 + 392] = mem[_437 + 406 len 18]
                    revert with memory
                      from mem[64]
                       len _437 + -mem[64] + 424
                mem[64] = _437 + ceil32(return_data.size) + 293
                mem[_437 + 292] = return_data.size
                mem[_437 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_437 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_437 + ceil32(return_data.size) + 411 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_437 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_437 + ceil32(return_data.size) + 297] = 32
                idx = 0
                while idx < 50:
                    mem[_437 + ceil32(return_data.size) + idx + 361] = mem[_437 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_437 + ceil32(return_data.size) + 393] = mem[_437 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 32, 50, mem[_437 + ceil32(return_data.size) + 361 len 64]
            _411 = mem[64]
            mem[64] = mem[64] + 64
            mem[_411] = _398
            mem[_411 + 32] = address(_396)
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = _398
            tokenByIndex[tokenByIndex.length].field_256 = address(_396)
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = _398
            mem[32] = 8
            stor8[_398] = tokenByIndex.length
            emit Transfer(0, address(_396), _398);
            if ext_code.size(address(_396)) <= 0:
                idx = idx + 1
                continue 
            _431 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = _398
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_399 + s + 32]
                s = s + 32
                continue 
            _779 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_779 + 32] = mem[_779 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _431 + 292
            mem[_431 + 196] = 50
            mem[_431 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_431 + 398 len 26]
            if ext_code.size(address(_396)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _824 = mem[_779]
            s = _779 + 32
            t = _431 + 292
            idx = mem[_779]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[_431 + floor32(mem[_779]) + 292] = mem[_779 + -(mem[_779] % 32) + floor32(mem[_779]) + 64 len mem[_779] % 32] or Mask(8 * -(mem[_779] % 32) + 32, -(8 * -(mem[_779] % 32) + 32) + 256, mem[_431 + floor32(mem[_779]) + 292])
            call address(_396).mem[_431 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_431 + 296 len _824 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_431 + 410 len 14]
                    s = 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_431 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_431 + 296] = 32
                mem[_431 + 328] = 50
                idx = 0
                while idx < 50:
                    mem[_431 + idx + 360] = mem[_431 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_431 + 392] = mem[_431 + 406 len 18]
                revert with memory
                  from mem[64]
                   len _431 + -mem[64] + 424
            mem[64] = _431 + ceil32(return_data.size) + 293
            mem[_431 + 292] = return_data.size
            mem[_431 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_431 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_431 + ceil32(return_data.size) + 411 len 14]
                s = 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_431 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_431 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_431 + ceil32(return_data.size) + idx + 361] = mem[_431 + idx + 228]
                idx = idx + 32
                continue 
            mem[_431 + ceil32(return_data.size) + 393] = mem[_431 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 32, 50, mem[_431 + ceil32(return_data.size) + 361 len 64]
        tokenOfOwnerByIndex[address(_396)]++
        tokenOfOwnerByIndex[address(_396)][tokenOfOwnerByIndex[address(_396)]] = _398
        tokenOfOwnerByIndex[address(_396)][1][_398] = tokenOfOwnerByIndex[address(_396)]
        mem[0] = _398
        mem[32] = 8
        if stor8[_398]:
            require stor8[_398] - 1 < tokenByIndex.length
            mem[0] = 7
            tokenByIndex[stor8[_398] - 1].field_256 = address(_396)
            tokenByIndex[stor8[_398] - 1].field_416 = 0
            emit Transfer(0, address(_396), _398);
            if ext_code.size(address(_396)) <= 0:
                idx = idx + 1
                continue 
            _440 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = _398
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_399 + s + 32]
                s = s + 32
                continue 
            _783 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_783 + 32] = mem[_783 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _440 + 292
            mem[_440 + 196] = 50
            mem[_440 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_440 + 398 len 26]
            if ext_code.size(address(_396)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _828 = mem[_783]
            t = _783 + 32
            u = _440 + 292
            s = mem[_783]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_440 + floor32(mem[_783]) + 292] = mem[_783 + -(mem[_783] % 32) + floor32(mem[_783]) + 64 len mem[_783] % 32] or Mask(8 * -(mem[_783] % 32) + 32, -(8 * -(mem[_783] % 32) + 32) + 256, mem[_440 + floor32(mem[_783]) + 292])
            call address(_396).mem[_440 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_440 + 296 len _828 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_440 + 410 len 14]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_440 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_440 + 296] = 32
                mem[_440 + 328] = 50
                idx = 0
                while idx < 50:
                    mem[_440 + idx + 360] = mem[_440 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_440 + 392] = mem[_440 + 406 len 18]
                revert with memory
                  from mem[64]
                   len _440 + -mem[64] + 424
            mem[64] = _440 + ceil32(return_data.size) + 293
            mem[_440 + 292] = return_data.size
            mem[_440 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_440 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_440 + ceil32(return_data.size) + 411 len 14]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_440 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_440 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_440 + ceil32(return_data.size) + idx + 361] = mem[_440 + idx + 228]
                idx = idx + 32
                continue 
            mem[_440 + ceil32(return_data.size) + 393] = mem[_440 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 32, 50, mem[_440 + ceil32(return_data.size) + 361 len 64]
        _416 = mem[64]
        mem[64] = mem[64] + 64
        mem[_416] = _398
        mem[_416 + 32] = address(_396)
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = _398
        tokenByIndex[tokenByIndex.length].field_256 = address(_396)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = _398
        mem[32] = 8
        stor8[_398] = tokenByIndex.length
        emit Transfer(0, address(_396), _398);
        if ext_code.size(address(_396)) <= 0:
            idx = idx + 1
            continue 
        _434 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = _398
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[mem[64] + s + 196] = mem[_399 + s + 32]
            s = s + 32
            continue 
        _787 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_787 + 32] = mem[_787 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _434 + 292
        mem[_434 + 196] = 50
        mem[_434 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_434 + 398 len 26]
        if ext_code.size(address(_396)) <= 0:
            revert with 0, 'Address: call to non-contract'
        _832 = mem[_787]
        s = _787 + 32
        t = _434 + 292
        idx = mem[_787]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[_434 + floor32(mem[_787]) + 292] = mem[_787 + -(mem[_787] % 32) + floor32(mem[_787]) + 64 len mem[_787] % 32] or Mask(8 * -(mem[_787] % 32) + 32, -(8 * -(mem[_787] % 32) + 32) + 256, mem[_434 + floor32(mem[_787]) + 292])
        call address(_396).mem[_434 + 292 len 4] with:
             gas gas_remaining wei
            args mem[_434 + 296 len _832 - 4]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_434 + 410 len 14]
                s = 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_434 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_434 + 296] = 32
            mem[_434 + 328] = 50
            idx = 0
            while idx < 50:
                mem[_434 + idx + 360] = mem[_434 + idx + 228]
                idx = idx + 32
                continue 
            mem[_434 + 392] = mem[_434 + 406 len 18]
            revert with memory
              from mem[64]
               len _434 + -mem[64] + 424
        mem[64] = _434 + ceil32(return_data.size) + 293
        mem[_434 + 292] = return_data.size
        mem[_434 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_434 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[_434 + ceil32(return_data.size) + 411 len 14]
            s = 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_434 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_434 + ceil32(return_data.size) + 297] = 32
        idx = 0
        while idx < 50:
            mem[_434 + ceil32(return_data.size) + idx + 361] = mem[_434 + idx + 228]
            idx = idx + 32
            continue 
        mem[_434 + ceil32(return_data.size) + 393] = mem[_434 + ceil32(return_data.size) + 407 len 18]
        revert with 0, 32, 50, mem[_434 + ceil32(return_data.size) + 361 len 64]
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
                    mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
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

function mintNFT(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if arg1 <= 0:
        revert with 0, 'You cannot mint 0 Nfts.'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e596f752063616e6e6f74206d696e74206d6f7265207468616e203230204e66747320706572206f6e63,
                    mem[206 len 22]
    if tokenByIndex.length + arg1 < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7345786365656473206d6178696d756d20737570706c792e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[217 len 11]
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        if msg.value != 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x73416d6f756e74206f662045746865722073656e74206973206e6f7420636f7272656374,
                        mem[200 len 28]
        idx = 0
        while idx < arg1:
            _3083 = mem[64]
            mem[mem[64] + 32] = address(msg.sender)
            _3084 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _3086 = sha3(mem[_3084 + 32 len mem[_3084]])
            require block.timestamp
            mem[_3083 + 84] = address(block.coinbase)
            mem[_3083 + 52] = 20
            mem[_3083 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number
            mem[_3083 + 104] = 32
            require punksRemainingToAssign
            punksRemainingToAssign--
            stor16[stor19 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / punksRemainingToAssign % punksRemainingToAssign
            if stor16[stor19 - 1] <= 0:
                if stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19] <= 0:
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19] = punksRemainingToAssign - 1
                    mem[64] = _3083 + 200
                    mem[_3083 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3083 + 236] = msg.sender
                        mem[_3083 + 268] = 0
                        mem[_3083 + 300] = stor16[stor19 - 1]
                        mem[_3083 + 332] = 128
                        mem[_3083 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3083 + s + 396] = mem[_3083 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3083 + 200] = 164
                        mem[_3083 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3083 + 492
                        mem[_3083 + 396] = 50
                        mem[_3083 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3083 + 232
                        u = _3083 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3083 + 652] = 0 or Mask(224, 32, mem[_3083 + 652])
                        call msg.sender.mem[_3083 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3083 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3083 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3083 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3083 + 496] = 32
                            mem[_3083 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3083 + idx + 560] = mem[_3083 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3083 + 592] = mem[_3083 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3083 + -mem[64] + 624
                        mem[64] = _3083 + ceil32(return_data.size) + 493
                        mem[_3083 + 492] = return_data.size
                        mem[_3083 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3083 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3083 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3083 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3083 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3083 + ceil32(return_data.size) + idx + 561] = mem[_3083 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3083 + ceil32(return_data.size) + 593] = mem[_3083 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3083 + ceil32(return_data.size) + 561 len 64]
                else:
                    stor16[stor19 - 1] = stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19]
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19] = punksRemainingToAssign - 1
                    mem[64] = _3083 + 200
                    mem[_3083 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3083 + 236] = msg.sender
                        mem[_3083 + 268] = 0
                        mem[_3083 + 300] = stor16[stor19 - 1]
                        mem[_3083 + 332] = 128
                        mem[_3083 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3083 + s + 396] = mem[_3083 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3083 + 200] = 164
                        mem[_3083 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3083 + 492
                        mem[_3083 + 396] = 50
                        mem[_3083 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3083 + 232
                        t = _3083 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3083 + 652] = 0 or Mask(224, 32, mem[_3083 + 652])
                        call msg.sender.mem[_3083 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3083 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3083 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3083 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3083 + 496] = 32
                            mem[_3083 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3083 + idx + 560] = mem[_3083 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3083 + 592] = mem[_3083 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3083 + -mem[64] + 624
                        mem[64] = _3083 + ceil32(return_data.size) + 493
                        mem[_3083 + 492] = return_data.size
                        mem[_3083 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3083 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3083 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3083 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3083 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3083 + ceil32(return_data.size) + idx + 561] = mem[_3083 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3083 + ceil32(return_data.size) + 593] = mem[_3083 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3083 + ceil32(return_data.size) + 561 len 64]
                ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor19', 19))), ('name', 'stor16', 16))), ('name', 'stor8', 8))))
                mem[64] = _3083 + 264
                mem[_3083 + 200] = stor16[stor19 - 1]
                mem[_3083 + 232] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor16[stor19 - 1]
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = stor16[stor19 - 1]
                mem[32] = 8
                stor8[stor16[stor19 - 1]] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                mem[_3083 + 300] = msg.sender
                mem[_3083 + 332] = 0
                mem[_3083 + 364] = stor16[stor19 - 1]
                mem[_3083 + 396] = 128
                mem[_3083 + 428] = 0
                s = 0
                while s < 0:
                    mem[_3083 + s + 460] = mem[_3083 + s + 200]
                    s = s + 32
                    continue 
                mem[_3083 + 264] = 164
                mem[_3083 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3083 + 556
                mem[_3083 + 460] = 50
                mem[_3083 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 662 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                t = _3083 + 296
                u = _3083 + 556
                s = 164
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_3083 + 716] = 0 or Mask(224, 32, mem[_3083 + 716])
                call msg.sender.mem[_3083 + 556 len 4] with:
                     gas gas_remaining wei
                    args mem[_3083 + 560 len 160]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3083 + 674 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3083 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3083 + 560] = 32
                    mem[_3083 + 592] = 50
                    idx = 0
                    while idx < 50:
                        mem[_3083 + idx + 624] = mem[_3083 + idx + 492]
                        idx = idx + 32
                        continue 
                    mem[_3083 + 656] = mem[_3083 + 670 len 18]
                    revert with memory
                      from mem[64]
                       len _3083 + -mem[64] + 688
                mem[64] = _3083 + ceil32(return_data.size) + 557
                mem[_3083 + 556] = return_data.size
                mem[_3083 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3083 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3083 + ceil32(return_data.size) + 675 len 14]
                    idx = idx + 1
                    continue 
            else:
                if stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19] <= 0:
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19] = stor16[stor19 - 1]
                    mem[64] = _3083 + 200
                    mem[_3083 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3083 + 236] = msg.sender
                        mem[_3083 + 268] = 0
                        mem[_3083 + 300] = stor16[stor19 - 1]
                        mem[_3083 + 332] = 128
                        mem[_3083 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3083 + s + 396] = mem[_3083 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3083 + 200] = 164
                        mem[_3083 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3083 + 492
                        mem[_3083 + 396] = 50
                        mem[_3083 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3083 + 232
                        t = _3083 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3083 + 652] = 0 or Mask(224, 32, mem[_3083 + 652])
                        call msg.sender.mem[_3083 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3083 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3083 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3083 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3083 + 496] = 32
                            mem[_3083 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3083 + idx + 560] = mem[_3083 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3083 + 592] = mem[_3083 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3083 + -mem[64] + 624
                        mem[64] = _3083 + ceil32(return_data.size) + 493
                        mem[_3083 + 492] = return_data.size
                        mem[_3083 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3083 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3083 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3083 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3083 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3083 + ceil32(return_data.size) + idx + 561] = mem[_3083 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3083 + ceil32(return_data.size) + 593] = mem[_3083 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3083 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3083 + 264
                    mem[_3083 + 200] = stor16[stor19 - 1]
                    mem[_3083 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor16[stor19 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor16[stor19 - 1]
                    mem[32] = 8
                    stor8[stor16[stor19 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3083 + 300] = msg.sender
                    mem[_3083 + 332] = 0
                    mem[_3083 + 364] = stor16[stor19 - 1]
                    mem[_3083 + 396] = 128
                    mem[_3083 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3083 + s + 460] = mem[_3083 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3083 + 264] = 164
                    mem[_3083 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3083 + 556
                    mem[_3083 + 460] = 50
                    mem[_3083 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    t = _3083 + 296
                    u = _3083 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_3083 + 716] = 0 or Mask(224, 32, mem[_3083 + 716])
                    call msg.sender.mem[_3083 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3083 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3083 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3083 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3083 + 560] = 32
                        mem[_3083 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3083 + idx + 624] = mem[_3083 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3083 + 656] = mem[_3083 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3083 + -mem[64] + 688
                    mem[64] = _3083 + ceil32(return_data.size) + 557
                    mem[_3083 + 556] = return_data.size
                    mem[_3083 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3083 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3083 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    stor16[stor19 - 1] = stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19]
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3086 / block.timestamp) + block.number) / stor19 % stor19] = stor16[stor19 - 1]
                    mem[64] = _3083 + 200
                    mem[_3083 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3083 + 236] = msg.sender
                        mem[_3083 + 268] = 0
                        mem[_3083 + 300] = stor16[stor19 - 1]
                        mem[_3083 + 332] = 128
                        mem[_3083 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3083 + s + 396] = mem[_3083 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3083 + 200] = 164
                        mem[_3083 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3083 + 492
                        mem[_3083 + 396] = 50
                        mem[_3083 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3083 + 232
                        u = _3083 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3083 + 652] = 0 or Mask(224, 32, mem[_3083 + 652])
                        call msg.sender.mem[_3083 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3083 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3083 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3083 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3083 + 496] = 32
                            mem[_3083 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3083 + idx + 560] = mem[_3083 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3083 + 592] = mem[_3083 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3083 + -mem[64] + 624
                        mem[64] = _3083 + ceil32(return_data.size) + 493
                        mem[_3083 + 492] = return_data.size
                        mem[_3083 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3083 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3083 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3083 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3083 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3083 + ceil32(return_data.size) + idx + 561] = mem[_3083 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3083 + ceil32(return_data.size) + 593] = mem[_3083 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3083 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3083 + 264
                    mem[_3083 + 200] = stor16[stor19 - 1]
                    mem[_3083 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor16[stor19 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor16[stor19 - 1]
                    mem[32] = 8
                    stor8[stor16[stor19 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3083 + 300] = msg.sender
                    mem[_3083 + 332] = 0
                    mem[_3083 + 364] = stor16[stor19 - 1]
                    mem[_3083 + 396] = 128
                    mem[_3083 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3083 + s + 460] = mem[_3083 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3083 + 264] = 164
                    mem[_3083 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3083 + 556
                    mem[_3083 + 460] = 50
                    mem[_3083 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3083 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    s = _3083 + 296
                    t = _3083 + 556
                    idx = 164
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_3083 + 716] = 0 or Mask(224, 32, mem[_3083 + 716])
                    call msg.sender.mem[_3083 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3083 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3083 + 674 len 14]
                            s = 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3083 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3083 + 560] = 32
                        mem[_3083 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3083 + idx + 624] = mem[_3083 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3083 + 656] = mem[_3083 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3083 + -mem[64] + 688
                    mem[64] = _3083 + ceil32(return_data.size) + 557
                    mem[_3083 + 556] = return_data.size
                    mem[_3083 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3083 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3083 + ceil32(return_data.size) + 675 len 14]
                        s = 1
                        continue 
            ('iszero', 'ext_call.success')
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3083 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3083 + ceil32(return_data.size) + 561] = 32
            idx = 0
            while idx < 50:
                mem[_3083 + ceil32(return_data.size) + idx + 625] = mem[_3083 + idx + 492]
                idx = idx + 32
                continue 
            mem[_3083 + ceil32(return_data.size) + 657] = mem[_3083 + ceil32(return_data.size) + 671 len 18]
            revert with 0, 32, 50, mem[_3083 + ceil32(return_data.size) + 625 len 64]
    else:
        require arg1
        if 100 * 10^18 * arg1 / arg1 != 100 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 100 * 10^18 * arg1 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x73416d6f756e74206f662045746865722073656e74206973206e6f7420636f7272656374,
                        mem[200 len 28]
        idx = 0
        while idx < arg1:
            _3079 = mem[64]
            mem[mem[64] + 32] = address(msg.sender)
            _3080 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _3082 = sha3(mem[_3080 + 32 len mem[_3080]])
            require block.timestamp
            mem[_3079 + 84] = address(block.coinbase)
            mem[_3079 + 52] = 20
            mem[_3079 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number
            mem[_3079 + 104] = 32
            require punksRemainingToAssign
            punksRemainingToAssign--
            stor16[stor19 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / punksRemainingToAssign % punksRemainingToAssign
            if stor16[stor19 - 1] <= 0:
                if stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19] <= 0:
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19] = punksRemainingToAssign - 1
                    mem[64] = _3079 + 200
                    mem[_3079 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3079 + 236] = msg.sender
                        mem[_3079 + 268] = 0
                        mem[_3079 + 300] = stor16[stor19 - 1]
                        mem[_3079 + 332] = 128
                        mem[_3079 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3079 + s + 396] = mem[_3079 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3079 + 200] = 164
                        mem[_3079 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3079 + 492
                        mem[_3079 + 396] = 50
                        mem[_3079 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3079 + 232
                        u = _3079 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3079 + 652] = 0 or Mask(224, 32, mem[_3079 + 652])
                        call msg.sender.mem[_3079 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3079 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3079 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3079 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3079 + 496] = 32
                            mem[_3079 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3079 + idx + 560] = mem[_3079 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3079 + 592] = mem[_3079 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3079 + -mem[64] + 624
                        mem[64] = _3079 + ceil32(return_data.size) + 493
                        mem[_3079 + 492] = return_data.size
                        mem[_3079 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3079 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3079 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3079 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3079 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3079 + ceil32(return_data.size) + idx + 561] = mem[_3079 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3079 + ceil32(return_data.size) + 593] = mem[_3079 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3079 + ceil32(return_data.size) + 561 len 64]
                else:
                    stor16[stor19 - 1] = stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19]
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19] = punksRemainingToAssign - 1
                    mem[64] = _3079 + 200
                    mem[_3079 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3079 + 236] = msg.sender
                        mem[_3079 + 268] = 0
                        mem[_3079 + 300] = stor16[stor19 - 1]
                        mem[_3079 + 332] = 128
                        mem[_3079 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3079 + s + 396] = mem[_3079 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3079 + 200] = 164
                        mem[_3079 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3079 + 492
                        mem[_3079 + 396] = 50
                        mem[_3079 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3079 + 232
                        t = _3079 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3079 + 652] = 0 or Mask(224, 32, mem[_3079 + 652])
                        call msg.sender.mem[_3079 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3079 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3079 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3079 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3079 + 496] = 32
                            mem[_3079 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3079 + idx + 560] = mem[_3079 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3079 + 592] = mem[_3079 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3079 + -mem[64] + 624
                        mem[64] = _3079 + ceil32(return_data.size) + 493
                        mem[_3079 + 492] = return_data.size
                        mem[_3079 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3079 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3079 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3079 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3079 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3079 + ceil32(return_data.size) + idx + 561] = mem[_3079 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3079 + ceil32(return_data.size) + 593] = mem[_3079 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3079 + ceil32(return_data.size) + 561 len 64]
                ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor19', 19))), ('name', 'stor16', 16))), ('name', 'stor8', 8))))
                mem[64] = _3079 + 264
                mem[_3079 + 200] = stor16[stor19 - 1]
                mem[_3079 + 232] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor16[stor19 - 1]
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = stor16[stor19 - 1]
                mem[32] = 8
                stor8[stor16[stor19 - 1]] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                mem[_3079 + 300] = msg.sender
                mem[_3079 + 332] = 0
                mem[_3079 + 364] = stor16[stor19 - 1]
                mem[_3079 + 396] = 128
                mem[_3079 + 428] = 0
                s = 0
                while s < 0:
                    mem[_3079 + s + 460] = mem[_3079 + s + 200]
                    s = s + 32
                    continue 
                mem[_3079 + 264] = 164
                mem[_3079 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3079 + 556
                mem[_3079 + 460] = 50
                mem[_3079 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 662 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                t = _3079 + 296
                u = _3079 + 556
                s = 164
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_3079 + 716] = 0 or Mask(224, 32, mem[_3079 + 716])
                call msg.sender.mem[_3079 + 556 len 4] with:
                     gas gas_remaining wei
                    args mem[_3079 + 560 len 160]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3079 + 674 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3079 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3079 + 560] = 32
                    mem[_3079 + 592] = 50
                    idx = 0
                    while idx < 50:
                        mem[_3079 + idx + 624] = mem[_3079 + idx + 492]
                        idx = idx + 32
                        continue 
                    mem[_3079 + 656] = mem[_3079 + 670 len 18]
                    revert with memory
                      from mem[64]
                       len _3079 + -mem[64] + 688
                mem[64] = _3079 + ceil32(return_data.size) + 557
                mem[_3079 + 556] = return_data.size
                mem[_3079 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3079 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3079 + ceil32(return_data.size) + 675 len 14]
                    idx = idx + 1
                    continue 
            else:
                if stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19] <= 0:
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19] = stor16[stor19 - 1]
                    mem[64] = _3079 + 200
                    mem[_3079 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3079 + 236] = msg.sender
                        mem[_3079 + 268] = 0
                        mem[_3079 + 300] = stor16[stor19 - 1]
                        mem[_3079 + 332] = 128
                        mem[_3079 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3079 + s + 396] = mem[_3079 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3079 + 200] = 164
                        mem[_3079 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3079 + 492
                        mem[_3079 + 396] = 50
                        mem[_3079 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3079 + 232
                        t = _3079 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3079 + 652] = 0 or Mask(224, 32, mem[_3079 + 652])
                        call msg.sender.mem[_3079 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3079 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3079 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3079 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3079 + 496] = 32
                            mem[_3079 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3079 + idx + 560] = mem[_3079 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3079 + 592] = mem[_3079 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3079 + -mem[64] + 624
                        mem[64] = _3079 + ceil32(return_data.size) + 493
                        mem[_3079 + 492] = return_data.size
                        mem[_3079 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3079 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3079 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3079 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3079 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3079 + ceil32(return_data.size) + idx + 561] = mem[_3079 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3079 + ceil32(return_data.size) + 593] = mem[_3079 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3079 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3079 + 264
                    mem[_3079 + 200] = stor16[stor19 - 1]
                    mem[_3079 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor16[stor19 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor16[stor19 - 1]
                    mem[32] = 8
                    stor8[stor16[stor19 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3079 + 300] = msg.sender
                    mem[_3079 + 332] = 0
                    mem[_3079 + 364] = stor16[stor19 - 1]
                    mem[_3079 + 396] = 128
                    mem[_3079 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3079 + s + 460] = mem[_3079 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3079 + 264] = 164
                    mem[_3079 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3079 + 556
                    mem[_3079 + 460] = 50
                    mem[_3079 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    t = _3079 + 296
                    u = _3079 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_3079 + 716] = 0 or Mask(224, 32, mem[_3079 + 716])
                    call msg.sender.mem[_3079 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3079 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3079 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3079 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3079 + 560] = 32
                        mem[_3079 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3079 + idx + 624] = mem[_3079 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3079 + 656] = mem[_3079 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3079 + -mem[64] + 688
                    mem[64] = _3079 + ceil32(return_data.size) + 557
                    mem[_3079 + 556] = return_data.size
                    mem[_3079 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3079 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3079 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    stor16[stor19 - 1] = stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19]
                    stor16[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3082 / block.timestamp) + block.number) / stor19 % stor19] = stor16[stor19 - 1]
                    mem[64] = _3079 + 200
                    mem[_3079 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor8[stor16[stor19 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16[stor19 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor16[stor19 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 8
                    if stor8[stor16[stor19 - 1]]:
                        require stor8[stor16[stor19 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 7
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor8[stor16[stor19 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3079 + 236] = msg.sender
                        mem[_3079 + 268] = 0
                        mem[_3079 + 300] = stor16[stor19 - 1]
                        mem[_3079 + 332] = 128
                        mem[_3079 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3079 + s + 396] = mem[_3079 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3079 + 200] = 164
                        mem[_3079 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3079 + 492
                        mem[_3079 + 396] = 50
                        mem[_3079 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3079 + 232
                        u = _3079 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3079 + 652] = 0 or Mask(224, 32, mem[_3079 + 652])
                        call msg.sender.mem[_3079 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3079 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3079 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3079 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3079 + 496] = 32
                            mem[_3079 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3079 + idx + 560] = mem[_3079 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3079 + 592] = mem[_3079 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3079 + -mem[64] + 624
                        mem[64] = _3079 + ceil32(return_data.size) + 493
                        mem[_3079 + 492] = return_data.size
                        mem[_3079 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3079 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3079 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3079 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3079 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3079 + ceil32(return_data.size) + idx + 561] = mem[_3079 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3079 + ceil32(return_data.size) + 593] = mem[_3079 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3079 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3079 + 264
                    mem[_3079 + 200] = stor16[stor19 - 1]
                    mem[_3079 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor16[stor19 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor16[stor19 - 1]
                    mem[32] = 8
                    stor8[stor16[stor19 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor16[stor19 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3079 + 300] = msg.sender
                    mem[_3079 + 332] = 0
                    mem[_3079 + 364] = stor16[stor19 - 1]
                    mem[_3079 + 396] = 128
                    mem[_3079 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3079 + s + 460] = mem[_3079 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3079 + 264] = 164
                    mem[_3079 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3079 + 556
                    mem[_3079 + 460] = 50
                    mem[_3079 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3079 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    s = _3079 + 296
                    t = _3079 + 556
                    idx = 164
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_3079 + 716] = 0 or Mask(224, 32, mem[_3079 + 716])
                    call msg.sender.mem[_3079 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3079 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3079 + 674 len 14]
                            s = 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3079 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3079 + 560] = 32
                        mem[_3079 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3079 + idx + 624] = mem[_3079 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3079 + 656] = mem[_3079 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3079 + -mem[64] + 688
                    mem[64] = _3079 + ceil32(return_data.size) + 557
                    mem[_3079 + 556] = return_data.size
                    mem[_3079 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3079 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3079 + ceil32(return_data.size) + 675 len 14]
                        s = 1
                        continue 
            ('iszero', 'ext_call.success')
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3079 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3079 + ceil32(return_data.size) + 561] = 32
            idx = 0
            while idx < 50:
                mem[_3079 + ceil32(return_data.size) + idx + 625] = mem[_3079 + idx + 492]
                idx = idx + 32
                continue 
            mem[_3079 + ceil32(return_data.size) + 657] = mem[_3079 + ceil32(return_data.size) + 671 len 18]
            revert with 0, 32, 50, mem[_3079 + ceil32(return_data.size) + 625 len 64]
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        call stor18 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor17 with:
             gas 2300 wei
    else:
        require arg1
        if 100 * 10^18 * arg1 / arg1 != 100 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        call stor18 with:
           value 4000 * 10^18 * arg1 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor17 with:
           value 6000 * 10^18 * arg1 / 100 wei
             gas 2300 * is_zero(value) wei
}



}
