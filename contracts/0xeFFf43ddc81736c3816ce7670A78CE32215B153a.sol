contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_1ab5e2c0(?) = 20

const sub_aecff54d(?) = 50 * 10^18


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
array of uint256 sub_3e37c618;
uint256 startingIndexBlock;
uint256 startingIndex;
uint256 sub_f7eb17cc;
uint8 saleIsActive;
uint256 stor15;

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

function sub_3e37c618(?) {
    return sub_3e37c618[0 len sub_3e37c618.length]
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

function startingIndex() {
    return startingIndex
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

function sub_f7eb17cc(?) {
    return sub_f7eb17cc
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

function flipSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15) = not bool(uint8(saleIsActive)) or Mask(248, 8, uint256(stor15))
}

function emergencySetStartingIndexBlock() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setProvenanceHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3e37c618[] = Array(len=arg1.length, data=arg1[all])
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

function setStartingIndex() {
    if startingIndex:
        revert with 0, 'Starting index is already set'
    if not startingIndexBlock:
        revert with 0, 'Starting index block must be set'
    require sub_f7eb17cc
    startingIndex = block.hash(startingIndexBlock) % sub_f7eb17cc
    if startingIndexBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - startingIndexBlock > 255:
        require sub_f7eb17cc
        startingIndex = block.hash(block.number - 1) % sub_f7eb17cc
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
        revert with 0, 32, 36, 0x534552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
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
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
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
        revert with 0, 32, 36, 0x534552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
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
    if not baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length > 0:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var30001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        var30002 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192])
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var33001 = floor32(stor8[arg1].length) + 128
        var33002 = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + 192
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 32
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        var38001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32]), 
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256])
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len 0] = None
        var37001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 257] = 32
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192
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
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 256 len baseURI.length % 32] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32]
    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 32
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32]), 
}

function sub_6f7af75c(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 30:
        _375 = mem[64]
        mem[64] = mem[64] + 32
        mem[_375] = 0
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
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _413 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length + idx
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_375 + s + 32]
                    s = s + 32
                    continue 
                _751 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_751 + 32] = mem[_751 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _413 + 292
                mem[_413 + 196] = 50
                mem[_413 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_413 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _796 = mem[_751]
                t = _751 + 32
                u = mem[64]
                s = mem[_751]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_751])] = mem[_751 + floor32(mem[_751]) + -(mem[_751] % 32) + 64 len mem[_751] % 32] or Mask(8 * -(mem[_751] % 32) + 32, -(8 * -(mem[_751] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_751])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _796 + _413 + -mem[64] + 288]
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
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _1131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_413 + 196]
                    _1133 = mem[_413 + 196]
                    idx = 0
                    while idx < _1133:
                        mem[_1131 + idx + 68] = mem[_413 + idx + 228]
                        idx = idx + 32
                        continue 
                    if not _1133 % 32:
                        revert with memory
                          from mem[64]
                           len _1133 + _1131 + -mem[64] + 68
                    mem[floor32(_1133) + _1131 + 68] = mem[floor32(_1133) + _1131 + -(_1133 % 32) + 100 len _1133 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1133) + _1131 + -mem[64] + 100
                _1107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1107] = return_data.size
                mem[_1107 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1107 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _1135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_413 + 196]
                _1137 = mem[_413 + 196]
                idx = 0
                while idx < _1137:
                    mem[_1135 + idx + 68] = mem[_413 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1137 % 32:
                    revert with memory
                      from mem[64]
                       len _1137 + _1135 + -mem[64] + 68
                mem[floor32(_1137) + _1135 + 68] = mem[floor32(_1137) + _1135 + -(_1137 % 32) + 100 len _1137 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1137) + _1135 + -mem[64] + 100
            _387 = mem[64]
            mem[64] = mem[64] + 64
            mem[_387] = tokenByIndex.length + idx
            mem[_387 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            stor3[stor2.length + idx] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length + idx);
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _407 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_375 + s + 32]
                s = s + 32
                continue 
            _755 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_755 + 32] = mem[_755 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _407 + 292
            mem[_407 + 196] = 50
            mem[_407 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_407 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _800 = mem[_755]
            s = _755 + 32
            t = mem[64]
            idx = mem[_755]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_755])] = mem[_755 + floor32(mem[_755]) + -(mem[_755] % 32) + 64 len mem[_755] % 32] or Mask(8 * -(mem[_755] % 32) + 32, -(8 * -(mem[_755] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_755])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _800 + _407 + -mem[64] + 288]
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
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _1147 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_407 + 196]
                _1149 = mem[_407 + 196]
                idx = 0
                while idx < _1149:
                    mem[_1147 + idx + 68] = mem[_407 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1149 % 32:
                    revert with memory
                      from mem[64]
                       len _1149 + _1147 + -mem[64] + 68
                mem[floor32(_1149) + _1147 + 68] = mem[floor32(_1149) + _1147 + -(_1149 % 32) + 100 len _1149 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1149) + _1147 + -mem[64] + 100
            _1109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1109] = return_data.size
            mem[_1109 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1109 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _1151 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_407 + 196]
            _1153 = mem[_407 + 196]
            idx = 0
            while idx < _1153:
                mem[_1151 + idx + 68] = mem[_407 + idx + 228]
                idx = idx + 32
                continue 
            if not _1153 % 32:
                revert with memory
                  from mem[64]
                   len _1153 + _1151 + -mem[64] + 68
            mem[floor32(_1153) + _1151 + 68] = mem[floor32(_1153) + _1151 + -(_1153 % 32) + 100 len _1153 % 32]
            revert with memory
              from mem[64]
               len floor32(_1153) + _1151 + -mem[64] + 100
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
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _416 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_375 + s + 32]
                s = s + 32
                continue 
            _759 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_759 + 32] = mem[_759 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _416 + 292
            mem[_416 + 196] = 50
            mem[_416 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_416 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _804 = mem[_759]
            t = _759 + 32
            u = mem[64]
            s = mem[_759]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_759])] = mem[_759 + floor32(mem[_759]) + -(mem[_759] % 32) + 64 len mem[_759] % 32] or Mask(8 * -(mem[_759] % 32) + 32, -(8 * -(mem[_759] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_759])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _804 + _416 + -mem[64] + 288]
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
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _1163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_416 + 196]
                _1165 = mem[_416 + 196]
                idx = 0
                while idx < _1165:
                    mem[_1163 + idx + 68] = mem[_416 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1165 % 32:
                    revert with memory
                      from mem[64]
                       len _1165 + _1163 + -mem[64] + 68
                mem[floor32(_1165) + _1163 + 68] = mem[floor32(_1165) + _1163 + -(_1165 % 32) + 100 len _1165 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1165) + _1163 + -mem[64] + 100
            _1111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1111] = return_data.size
            mem[_1111 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1111 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _1167 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_416 + 196]
            _1169 = mem[_416 + 196]
            idx = 0
            while idx < _1169:
                mem[_1167 + idx + 68] = mem[_416 + idx + 228]
                idx = idx + 32
                continue 
            if not _1169 % 32:
                revert with memory
                  from mem[64]
                   len _1169 + _1167 + -mem[64] + 68
            mem[floor32(_1169) + _1167 + 68] = mem[floor32(_1169) + _1167 + -(_1169 % 32) + 100 len _1169 % 32]
            revert with memory
              from mem[64]
               len floor32(_1169) + _1167 + -mem[64] + 100
        _392 = mem[64]
        mem[64] = mem[64] + 64
        mem[_392] = tokenByIndex.length + idx
        mem[_392 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        stor3[stor2.length + idx] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length + idx);
        if ext_code.size(msg.sender) <= 0:
            idx = idx + 1
            continue 
        _410 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length + idx
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[mem[64] + s + 196] = mem[_375 + s + 32]
            s = s + 32
            continue 
        _763 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_763 + 32] = mem[_763 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _410 + 292
        mem[_410 + 196] = 50
        mem[_410 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_410 + 398 len 26]
        if ext_code.size(msg.sender) <= 0:
            revert with 0, 'Address: call to non-contract'
        _808 = mem[_763]
        s = _763 + 32
        t = mem[64]
        idx = mem[_763]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_763])] = mem[_763 + floor32(mem[_763]) + -(mem[_763] % 32) + 64 len mem[_763] % 32] or Mask(8 * -(mem[_763] % 32) + 32, -(8 * -(mem[_763] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_763])])
        call msg.sender.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _808 + _410 + -mem[64] + 288]
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
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _1179 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_410 + 196]
            _1181 = mem[_410 + 196]
            idx = 0
            while idx < _1181:
                mem[_1179 + idx + 68] = mem[_410 + idx + 228]
                idx = idx + 32
                continue 
            if not _1181 % 32:
                revert with memory
                  from mem[64]
                   len _1181 + _1179 + -mem[64] + 68
            mem[floor32(_1181) + _1179 + 68] = mem[floor32(_1181) + _1179 + -(_1181 % 32) + 100 len _1181 % 32]
            revert with memory
              from mem[64]
               len floor32(_1181) + _1179 + -mem[64] + 100
        _1113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1113] = return_data.size
        mem[_1113 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1113 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            s = 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _1183 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_410 + 196]
        _1185 = mem[_410 + 196]
        idx = 0
        while idx < _1185:
            mem[_1183 + idx + 68] = mem[_410 + idx + 228]
            idx = idx + 32
            continue 
        if not _1185 % 32:
            revert with memory
              from mem[64]
               len _1185 + _1183 + -mem[64] + 68
        mem[floor32(_1185) + _1183 + 68] = mem[floor32(_1185) + _1183 + -(_1185 % 32) + 100 len _1185 % 32]
        revert with memory
          from mem[64]
           len floor32(_1185) + _1183 + -mem[64] + 100
}

function sub_64fb2e25(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not uint8(saleIsActive):
        revert with 0, 'Sale must be active to mint GEN'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e43616e206f6e6c79206d696e7420323020746f6b656e7320617420612074696d,
                    mem[197 len 31]
    if tokenByIndex.length + arg1 < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + arg1 > sub_f7eb17cc:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73507572636861736520776f756c6420657863656564206d617820737570706c79206f662047454e,
                    mem[204 len 24]
    idx = 0
    while idx < arg1:
        if tokenByIndex.length >= sub_f7eb17cc:
            idx = idx + 1
            continue 
        _381 = mem[64]
        mem[64] = mem[64] + 32
        mem[_381] = 0
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
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _419 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_381 + s + 32]
                    s = s + 32
                    continue 
                _757 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_757 + 32] = mem[_757 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _419 + 292
                mem[_419 + 196] = 50
                mem[_419 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_419 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _802 = mem[_757]
                s = _757 + 32
                t = mem[64]
                idx = mem[_757]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[_757])] = mem[_757 + floor32(mem[_757]) + -(mem[_757] % 32) + 64 len mem[_757] % 32] or Mask(8 * -(mem[_757] % 32) + 32, -(8 * -(mem[_757] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_757])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _802 + _419 + -mem[64] + 288]
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
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _1137 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_419 + 196]
                    _1139 = mem[_419 + 196]
                    idx = 0
                    while idx < _1139:
                        mem[_1137 + idx + 68] = mem[_419 + idx + 228]
                        idx = idx + 32
                        continue 
                    if not _1139 % 32:
                        revert with memory
                          from mem[64]
                           len _1139 + _1137 + -mem[64] + 68
                    mem[floor32(_1139) + _1137 + 68] = mem[floor32(_1139) + _1137 + -(_1139 % 32) + 100 len _1139 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1139) + _1137 + -mem[64] + 100
                _1113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1113] = return_data.size
                mem[_1113 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1113 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    s = 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _1141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_419 + 196]
                _1143 = mem[_419 + 196]
                idx = 0
                while idx < _1143:
                    mem[_1141 + idx + 68] = mem[_419 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1143 % 32:
                    revert with memory
                      from mem[64]
                       len _1143 + _1141 + -mem[64] + 68
                mem[floor32(_1143) + _1141 + 68] = mem[floor32(_1143) + _1141 + -(_1143 % 32) + 100 len _1143 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1143) + _1141 + -mem[64] + 100
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = tokenByIndex.length
            mem[_393 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length
            mem[32] = 3
            stor3[stor2.length] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _413 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_381 + s + 32]
                s = s + 32
                continue 
            _761 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_761 + 32] = mem[_761 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _413 + 292
            mem[_413 + 196] = 50
            mem[_413 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_413 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _806 = mem[_761]
            t = _761 + 32
            u = mem[64]
            s = mem[_761]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_761])] = mem[_761 + floor32(mem[_761]) + -(mem[_761] % 32) + 64 len mem[_761] % 32] or Mask(8 * -(mem[_761] % 32) + 32, -(8 * -(mem[_761] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_761])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _806 + _413 + -mem[64] + 288]
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
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _1153 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_413 + 196]
                _1155 = mem[_413 + 196]
                idx = 0
                while idx < _1155:
                    mem[_1153 + idx + 68] = mem[_413 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1155 % 32:
                    revert with memory
                      from mem[64]
                       len _1155 + _1153 + -mem[64] + 68
                mem[floor32(_1155) + _1153 + 68] = mem[floor32(_1155) + _1153 + -(_1155 % 32) + 100 len _1155 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1155) + _1153 + -mem[64] + 100
            _1115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1115] = return_data.size
            mem[_1115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1115 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _1157 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_413 + 196]
            _1159 = mem[_413 + 196]
            idx = 0
            while idx < _1159:
                mem[_1157 + idx + 68] = mem[_413 + idx + 228]
                idx = idx + 32
                continue 
            if not _1159 % 32:
                revert with memory
                  from mem[64]
                   len _1159 + _1157 + -mem[64] + 68
            mem[floor32(_1159) + _1157 + 68] = mem[floor32(_1159) + _1157 + -(_1159 % 32) + 100 len _1159 % 32]
            revert with memory
              from mem[64]
               len floor32(_1159) + _1157 + -mem[64] + 100
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
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _422 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_381 + s + 32]
                s = s + 32
                continue 
            _765 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_765 + 32] = mem[_765 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _422 + 292
            mem[_422 + 196] = 50
            mem[_422 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_422 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _810 = mem[_765]
            s = _765 + 32
            t = mem[64]
            idx = mem[_765]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_765])] = mem[_765 + floor32(mem[_765]) + -(mem[_765] % 32) + 64 len mem[_765] % 32] or Mask(8 * -(mem[_765] % 32) + 32, -(8 * -(mem[_765] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_765])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _810 + _422 + -mem[64] + 288]
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
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _1169 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_422 + 196]
                _1171 = mem[_422 + 196]
                idx = 0
                while idx < _1171:
                    mem[_1169 + idx + 68] = mem[_422 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1171 % 32:
                    revert with memory
                      from mem[64]
                       len _1171 + _1169 + -mem[64] + 68
                mem[floor32(_1171) + _1169 + 68] = mem[floor32(_1171) + _1169 + -(_1171 % 32) + 100 len _1171 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1171) + _1169 + -mem[64] + 100
            _1117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1117] = return_data.size
            mem[_1117 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1117 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _1173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_422 + 196]
            _1175 = mem[_422 + 196]
            idx = 0
            while idx < _1175:
                mem[_1173 + idx + 68] = mem[_422 + idx + 228]
                idx = idx + 32
                continue 
            if not _1175 % 32:
                revert with memory
                  from mem[64]
                   len _1175 + _1173 + -mem[64] + 68
            mem[floor32(_1175) + _1173 + 68] = mem[floor32(_1175) + _1173 + -(_1175 % 32) + 100 len _1175 % 32]
            revert with memory
              from mem[64]
               len floor32(_1175) + _1173 + -mem[64] + 100
        _398 = mem[64]
        mem[64] = mem[64] + 64
        mem[_398] = tokenByIndex.length
        mem[_398 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length
        mem[32] = 3
        stor3[stor2.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if ext_code.size(msg.sender) <= 0:
            idx = idx + 1
            continue 
        _416 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[mem[64] + s + 196] = mem[_381 + s + 32]
            s = s + 32
            continue 
        _769 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_769 + 32] = mem[_769 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _416 + 292
        mem[_416 + 196] = 50
        mem[_416 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_416 + 398 len 26]
        if ext_code.size(msg.sender) <= 0:
            revert with 0, 'Address: call to non-contract'
        _814 = mem[_769]
        t = _769 + 32
        u = mem[64]
        s = mem[_769]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_769])] = mem[_769 + floor32(mem[_769]) + -(mem[_769] % 32) + 64 len mem[_769] % 32] or Mask(8 * -(mem[_769] % 32) + 32, -(8 * -(mem[_769] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_769])])
        call msg.sender.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _814 + _416 + -mem[64] + 288]
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
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _1185 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_416 + 196]
            _1187 = mem[_416 + 196]
            idx = 0
            while idx < _1187:
                mem[_1185 + idx + 68] = mem[_416 + idx + 228]
                idx = idx + 32
                continue 
            if not _1187 % 32:
                revert with memory
                  from mem[64]
                   len _1187 + _1185 + -mem[64] + 68
            mem[floor32(_1187) + _1185 + 68] = mem[floor32(_1187) + _1185 + -(_1187 % 32) + 100 len _1187 % 32]
            revert with memory
              from mem[64]
               len floor32(_1187) + _1185 + -mem[64] + 100
        _1119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1119] = return_data.size
        mem[_1119 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1119 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _1189 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_416 + 196]
        _1191 = mem[_416 + 196]
        idx = 0
        while idx < _1191:
            mem[_1189 + idx + 68] = mem[_416 + idx + 228]
            idx = idx + 32
            continue 
        if not _1191 % 32:
            revert with memory
              from mem[64]
               len _1191 + _1189 + -mem[64] + 68
        mem[floor32(_1191) + _1189 + 68] = mem[floor32(_1191) + _1189 + -(_1191 % 32) + 100 len _1191 % 32]
        revert with memory
          from mem[64]
           len floor32(_1191) + _1189 + -mem[64] + 100
}



}
