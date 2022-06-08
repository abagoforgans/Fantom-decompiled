contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
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
address _owner;
mapping of uint8 stor12;
mapping of uint256 price;

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

function price(uint256 arg1) {
    require calldata.size - 4 >= 32
    return price[arg1]
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

function sold(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function _owner() {
    return _owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function mint(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price[stor2.length + 1] = arg2
    if not this.address:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor2.length + 1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(this.address)][1][stor2.length + 1]:
        tokenOfOwnerByIndex[address(this.address)]++
        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]] = tokenByIndex.length + 1
        tokenOfOwnerByIndex[address(this.address)][1][stor2.length + 1] = tokenOfOwnerByIndex[address(this.address)]
    if stor3[stor2.length + 1]:
        require stor3[stor2.length + 1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[tokenByIndex.length + 1] - 1].field_256 = this.address
        tokenByIndex[stor3[tokenByIndex.length + 1] - 1].field_416 = 0
        emit Transfer(0, this.address, tokenByIndex.length + 1);
        if not stor3[stor2.length + 1]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg1.length) + 240 len 20]
        if arg1.length:
            stor8[stor2.length + 1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[stor2.length + 1].field_0 = 0
            idx = 0
            while stor8[stor2.length + 1].length + 31 / 32 > idx:
                stor8[stor2.length + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[ceil32(arg1.length) + 128] = 1
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
    tokenByIndex[tokenByIndex.length].field_256 = this.address
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor3[stor2.length + 1] = tokenByIndex.length
    emit Transfer(0, this.address, tokenByIndex.length + 1);
    if not stor3[stor2.length + 1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg1.length) + 304 len 20]
    if arg1.length:
        stor8[stor2.length + 1][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor8[stor2.length + 1].field_0 = 0
        idx = 0
        while stor8[stor2.length + 1].length + 31 / 32 > idx:
            stor8[stor2.length + 1][idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
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
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
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
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 'Error, wrong Token id'
    if stor12[arg1]:
        revert with 0, 'Error, Token is sold'
    if msg.value < price[arg1]:
        revert with 0, 'Error, Token costs more'
    mem[96] = 41
    mem[128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 != this.address:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    if not msg.sender:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[296 len 28]
    approved[arg1] = 0
    mem[192] = 41
    mem[224 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg1] - 1].field_256, 0, arg1);
    if not tokenOfOwnerByIndex[address(this.address)][1][arg1]:
        if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
            tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        if stor3[arg1]:
            require stor3[arg1] - 1 < tokenByIndex.length
            tokenByIndex[stor3[arg1] - 1].field_256 = msg.sender
            tokenByIndex[stor3[arg1] - 1].field_416 = 0
            emit Transfer(this.address, msg.sender, arg1);
            call _owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor12[arg1] = 1
            if not stor3[arg1]:
                revert with 0, 
                            32,
                            47,
                            0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[403 len 17]
            mem[32] = 8
            mem[288] = stor8[arg1].length
            mem[320] = stor8[arg1].field_0
            idx = 320
            s = 0
            while stor8[arg1].length + 288 > idx:
                mem[idx + 32] = stor8[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352
            mem[ceil32(stor8[arg1].length) + 320] = baseURI.length
            mem[0] = 9
            mem[ceil32(stor8[arg1].length) + 352] = uint256(baseURI.field_0)
            idx = ceil32(stor8[arg1].length) + 352
            s = 0
            while ceil32(stor8[arg1].length) + baseURI.length + 320 > idx:
                mem[idx + 32] = baseURI[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not baseURI.length:
                emit Purchase(msg.sender, price[arg1], arg1, Array(len=stor8[arg1].length, data=mem[320 len stor8[arg1].length]));
            else:
                if stor8[arg1].length > 0:
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 352 len floor32(baseURI.length)]
                    var89001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 352
                    var89002 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 384
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 384] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 384 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 384])
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len floor32(stor8[arg1].length)] = mem[320 len floor32(stor8[arg1].length)]
                    var92001 = floor32(stor8[arg1].length) + 320
                    var92002 = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + 384
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 416 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 352 len stor8[arg1].length % 32]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384] = msg.sender
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] = price[arg1]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448] = arg1
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] = 128
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352])]
                    var97001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352])
                    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] % 32:
                        emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                      msg.sender,
                                      price[arg1],
                                      arg1,
                                      128,
                                      mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] + 32],
                    else:
                        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] % 32) + 576 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] % 32]
                        emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352], data=mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]) + 32]));
                else:
                    if not arg1:
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] = 1
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384] = '0'
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 352 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 384 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448])
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len 0] = None
                        var96001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 449] = msg.sender
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 481] = price[arg1]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 513] = arg1
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 545] = 128
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 577] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 577 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32) + 641 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32]
                            emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416], data=mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + 32]));
                    else:
                        s = 0
                        idx = arg1
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        require s <= test266151307()
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] = s
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384
                        if s:
                            mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len s] = call.data[calldata.size len s]
                        t = s - 1
                        idx = arg1
                        while idx:
                            require t < s
                            mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 352 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 384 len baseURI.length % 32]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len floor32(s)]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 448 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 416 len s % 32]
                        mem[64] = s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416] = msg.sender
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] = price[arg1]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480] = arg1
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 512] = 128
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] % 32) + 608 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] % 32]
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]) + 64],
        else:
            mem[288] = arg1
            mem[320] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg1
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor3[arg1] = tokenByIndex.length
            emit Transfer(this.address, msg.sender, arg1);
            call _owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor12[arg1] = 1
            if not stor3[arg1]:
                revert with 0, 
                            32,
                            47,
                            0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[467 len 17]
            mem[32] = 8
            mem[352] = stor8[arg1].length
            mem[384] = stor8[arg1].field_0
            idx = 384
            s = 0
            while stor8[arg1].length + 352 > idx:
                mem[idx + 32] = stor8[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416
            mem[ceil32(stor8[arg1].length) + 384] = baseURI.length
            mem[0] = 9
            mem[ceil32(stor8[arg1].length) + 416] = uint256(baseURI.field_0)
            idx = ceil32(stor8[arg1].length) + 416
            s = 0
            while ceil32(stor8[arg1].length) + baseURI.length + 384 > idx:
                mem[idx + 32] = baseURI[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not baseURI.length:
                emit Purchase(msg.sender, price[arg1], arg1, Array(len=stor8[arg1].length, data=mem[384 len stor8[arg1].length]));
            else:
                if stor8[arg1].length > 0:
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 416 len floor32(baseURI.length)]
                    var88001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 416
                    var88002 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448])
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(stor8[arg1].length)] = mem[384 len floor32(stor8[arg1].length)]
                    var91001 = floor32(stor8[arg1].length) + 384
                    var91002 = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + 448
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 480 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 416 len stor8[arg1].length % 32]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448] = msg.sender
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] = price[arg1]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512] = arg1
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544] = 128
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 576] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 608 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])]
                    var96001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])
                    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32:
                        emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                      msg.sender,
                                      price[arg1],
                                      arg1,
                                      128,
                                      mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 576 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] + 32],
                    else:
                        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 608] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32) + 640 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32]
                        emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416], data=mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 608 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + 32]));
                else:
                    if not arg1:
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] = 1
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448] = '0'
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 416 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 512] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 512])
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len 0] = None
                        var95001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 513] = msg.sender
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 545] = price[arg1]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 577] = arg1
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609] = 128
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 641] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 673 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 641 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 673] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] % 32) + 705 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] % 32]
                            emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480], data=mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 673 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]) + 32]));
                    else:
                        s = 0
                        idx = arg1
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        require s <= test266151307()
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] = s
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448
                        if s:
                            mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len s] = call.data[calldata.size len s]
                        t = s - 1
                        idx = arg1
                        while idx:
                            require t < s
                            mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 416 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 512 len baseURI.length % 32] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(s)]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 512 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 480 len s % 32]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480] = msg.sender
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 512] = price[arg1]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544] = arg1
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576] = 128
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 608] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 640 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 608 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 640] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] % 32) + 672 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] % 32]
                            emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448], data=mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 640 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]) + 32]));
    else:
        require tokenOfOwnerByIndex[address(this.address)] - 1 < tokenOfOwnerByIndex[address(this.address)]
        require tokenOfOwnerByIndex[address(this.address)][1][arg1] - 1 < tokenOfOwnerByIndex[address(this.address)]
        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)][1][arg1]] = tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]
        tokenOfOwnerByIndex[address(this.address)][1][tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]] = tokenOfOwnerByIndex[address(this.address)][1][arg1]
        require tokenOfOwnerByIndex[address(this.address)]
        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]] = 0
        tokenOfOwnerByIndex[address(this.address)]--
        tokenOfOwnerByIndex[address(this.address)][1][arg1] = 0
        if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
            tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        if stor3[arg1]:
            require stor3[arg1] - 1 < tokenByIndex.length
            tokenByIndex[stor3[arg1] - 1].field_256 = msg.sender
            tokenByIndex[stor3[arg1] - 1].field_416 = 0
            emit Transfer(this.address, msg.sender, arg1);
            call _owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor12[arg1] = 1
            if not stor3[arg1]:
                revert with 0, 
                            32,
                            47,
                            0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[403 len 17]
            mem[32] = 8
            mem[288] = stor8[arg1].length
            mem[320] = stor8[arg1].field_0
            idx = 320
            s = 0
            while stor8[arg1].length + 288 > idx:
                mem[idx + 32] = stor8[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352
            mem[ceil32(stor8[arg1].length) + 320] = baseURI.length
            mem[0] = 9
            mem[ceil32(stor8[arg1].length) + 352] = uint256(baseURI.field_0)
            idx = ceil32(stor8[arg1].length) + 352
            s = 0
            while ceil32(stor8[arg1].length) + baseURI.length + 320 > idx:
                mem[idx + 32] = baseURI[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not baseURI.length:
                emit Purchase(msg.sender, price[arg1], arg1, Array(len=stor8[arg1].length, data=mem[320 len stor8[arg1].length]));
            else:
                if stor8[arg1].length > 0:
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 352 len floor32(baseURI.length)]
                    var92001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 352
                    var92002 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 384
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 384] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 384 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 384])
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len floor32(stor8[arg1].length)] = mem[320 len floor32(stor8[arg1].length)]
                    var95001 = floor32(stor8[arg1].length) + 320
                    var95002 = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + 384
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 416 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 352 len stor8[arg1].length % 32]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384] = msg.sender
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] = price[arg1]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448] = arg1
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] = 128
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352])]
                    var100001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352])
                    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] % 32:
                        emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                      msg.sender,
                                      price[arg1],
                                      arg1,
                                      128,
                                      mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] + 32],
                    else:
                        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] % 32) + 576 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] % 32]
                        emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352], data=mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352]) + 32]));
                else:
                    if not arg1:
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] = 1
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384] = '0'
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 352 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 384 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448])
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len 0] = None
                        var99001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 449] = msg.sender
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 481] = price[arg1]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 513] = arg1
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 545] = 128
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 577] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 577 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32) + 641 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32]
                            emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416], data=mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + 32]));
                    else:
                        s = 0
                        idx = arg1
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        require s <= test266151307()
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 352] = s
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384
                        if s:
                            mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len s] = call.data[calldata.size len s]
                        t = s - 1
                        idx = arg1
                        while idx:
                            require t < s
                            mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 352 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 384 len baseURI.length % 32]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 384 len floor32(s)]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 448 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 416 len s % 32]
                        mem[64] = s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416] = msg.sender
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] = price[arg1]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480] = arg1
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 512] = 128
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 416 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] % 32) + 608 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384] % 32]
                            emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384], data=mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 384]) + 32]));
        else:
            mem[288] = arg1
            mem[320] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg1
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor3[arg1] = tokenByIndex.length
            emit Transfer(this.address, msg.sender, arg1);
            call _owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor12[arg1] = 1
            if not stor3[arg1]:
                revert with 0, 
                            32,
                            47,
                            0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[467 len 17]
            mem[32] = 8
            mem[352] = stor8[arg1].length
            mem[384] = stor8[arg1].field_0
            idx = 384
            s = 0
            while stor8[arg1].length + 352 > idx:
                mem[idx + 32] = stor8[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416
            mem[ceil32(stor8[arg1].length) + 384] = baseURI.length
            mem[0] = 9
            mem[ceil32(stor8[arg1].length) + 416] = uint256(baseURI.field_0)
            idx = ceil32(stor8[arg1].length) + 416
            s = 0
            while ceil32(stor8[arg1].length) + baseURI.length + 384 > idx:
                mem[idx + 32] = baseURI[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not baseURI.length:
                emit Purchase(msg.sender, price[arg1], arg1, Array(len=stor8[arg1].length, data=mem[384 len stor8[arg1].length]));
            else:
                if stor8[arg1].length > 0:
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 416 len floor32(baseURI.length)]
                    var91001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 416
                    var91002 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448
                    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 448])
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(stor8[arg1].length)] = mem[384 len floor32(stor8[arg1].length)]
                    var94001 = floor32(stor8[arg1].length) + 384
                    var94002 = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + 448
                    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 480 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 416 len stor8[arg1].length % 32]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448] = msg.sender
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] = price[arg1]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512] = arg1
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 544] = 128
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 576] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]
                    mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 608 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])]
                    var99001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416])
                    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32:
                        emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                      msg.sender,
                                      price[arg1],
                                      arg1,
                                      128,
                                      mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 576 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] + 32],
                    else:
                        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 608] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32) + 640 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] % 32]
                        emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416], data=mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 608 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416]) + 32]));
                else:
                    if not arg1:
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] = 1
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448] = '0'
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 416 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 512] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 512])
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len 0] = None
                        var98001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 513] = msg.sender
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 545] = price[arg1]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 577] = arg1
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 609] = 128
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 641] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 673 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 512 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 641 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 673] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] % 32) + 705 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480] % 32]
                            emit Purchase(msg.sender, price[arg1], arg1, Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480], data=mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 673 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 480]) + 32]));
                    else:
                        s = 0
                        idx = arg1
                        while idx:
                            s = s + 1
                            idx = idx / 10
                            continue 
                        require s <= test266151307()
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 416] = s
                        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448
                        if s:
                            mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len s] = call.data[calldata.size len s]
                        t = s - 1
                        idx = arg1
                        while idx:
                            require t < s
                            mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 416 len floor32(baseURI.length)]
                        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 512 len baseURI.length % 32] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 448 len baseURI.length % 32]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 448 len floor32(s)]
                        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 512 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 480 len s % 32]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480] = msg.sender
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 512] = price[arg1]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 544] = arg1
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 576] = 128
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 608] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]
                        mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 640 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 480 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448])]
                        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] % 32:
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 608 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] + 32],
                        else:
                            mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 640] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] % 32) + 672 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448] % 32]
                            emit Purchase(address arg1, uint256 arg2, uint256 arg3, string arg4):
                                          msg.sender,
                                          price[arg1],
                                          arg1,
                                          128,
                                          mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 608 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 448]) + 64],
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
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
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
        if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
            if stor3[arg3]:
                require stor3[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                tokenByIndex[stor3[arg3] - 1].field_416 = 0
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
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
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
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
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
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
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
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
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
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
}



}
