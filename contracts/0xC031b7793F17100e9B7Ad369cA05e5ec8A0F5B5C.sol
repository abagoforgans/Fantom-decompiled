contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#
const MAX_Supply = 5188


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
uint256 price;
uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint8 stor16; offset 8
uint256 stor16; offset 8
mapping of uint256 stor17;
mapping of uint256 balanceOfCredit;
array of uint256 METADATA_PROVENANCE_HASH;

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

function balanceOfCredit(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOfCredit[address(arg1)]
}

function totalSupply() {
    return tokenByIndex.length
}

function hasSaleStarted() {
    return bool(stor12)
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

function price() {
    return price
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function METADATA_PROVENANCE_HASH() {
    return METADATA_PROVENANCE_HASH[0 len METADATA_PROVENANCE_HASH.length]
}

function _fallback() payable {
    revert
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addCredit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    balanceOfCredit[address(arg1)] += arg2
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setBaseURI(string arg1) {
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

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(uint8(stor16.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6e746f6b656e494473206d696e746564206f6e20457468657265756d2068617665206e6f7420796574206265656e206578636c756465,
                    mem[218 len 10]
    if bool(uint8(stor16.field_8)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64466f756e64657273204e4654732068617665206e6f74206265656e2061697264726f707065,
                    mem[202 len 26]
    stor12 = 1
}

function sub_9eba016f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor16.field_0):
        revert with 0, 
                    32,
                    47,
                    0x735072652d6578697374696e6720455448204e4654732061726520616c7265616479206163636f756e74656420666f,
                    mem[(32 * arg1.length) + 243 len 17]
    idx = 0
    while idx < arg2:
        require stor14 < arg1.length
        mem[0] = mem[(32 * stor14) + 128] - 1
        mem[32] = 17
        if stor17[-stor13 + 5187]:
            stor17[mem[(32 * stor14) + 128] - 1] = stor17[-stor13 + 5187]
        else:
            stor17[mem[(32 * stor14) + 128] - 1] = -stor13 + 5187
        stor13++
        stor14++
        if stor14 < arg1.length:
            idx = idx + 1
            continue 
        uint8(stor16.field_0) = 1
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
        revert with 0, 32, 33, 0x644552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
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

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if not tokenOfOwnerByIndex[address(arg1)]:
        return ''
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 1
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = sha3(address(arg1), 1)
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])]
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])], mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + floor32(tokenOfOwnerByIndex[address(arg1)]) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)]) - floor32(tokenOfOwnerByIndex[address(arg1)])]), 
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
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x654552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
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
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x654552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
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
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
    mem[64] = s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 32
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return 32, mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 201 len 23],
                    mem[ceil32(arg4.length) + 247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x654552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 297 len 23],
                    mem[ceil32(arg4.length) + 343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 429 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 424 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 393 len 23],
                    mem[ceil32(arg4.length) + 439 len 9]
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
            mem[ceil32(arg4.length) + 548] = 128
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[arg4.length + ceil32(arg4.length) + 814 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 708 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 740 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 416 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 708 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 694 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 694 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 694 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 694 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 612] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 644 len arg4.length % 32]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 846 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 740 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 772 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 416 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 740 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 772]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 859 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 612] = 128
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[arg4.length + ceil32(arg4.length) + 878 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 772 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 804 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 480 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 772 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 758 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 758 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 758 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 891 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 676] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 708 len arg4.length % 32]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 910 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 804 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 836 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 480 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 804 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 836]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 923 len 14]
}

function sub_952bf071(?) {
    require calldata.size - 4 >= 96
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
    if bool(uint8(stor16.field_0)) != 1:
        revert with 0, 
                    32,
                    54,
                    0x6e746f6b656e494473206d696e746564206f6e20457468657265756d2068617665206e6f7420796574206265656e206578636c756465,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 282 len 10]
    if uint8(stor16.field_8):
        revert with 0, 
                    32,
                    34,
                    0x72466f756e64657273204e4654732068617665206265656e2061697264726f707065,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 262 len 30]
    idx = 0
    while idx < arg3:
        require stor15 < mem[96]
        _406 = mem[(32 * stor15) + 128]
        require stor15 < mem[(32 * arg1.length) + 128]
        _408 = mem[(32 * stor15) + (32 * arg1.length) + 160]
        _409 = mem[64]
        mem[64] = mem[64] + 32
        mem[_409] = 0
        if not address(_406):
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[_408]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(_406)][1][_408]:
            mem[0] = _408
            mem[32] = 3
            if stor3[_408]:
                require stor3[_408] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[_408] - 1].field_256 = address(_406)
                tokenByIndex[stor3[_408] - 1].field_416 = 0
                emit Transfer(0, address(_406), _408);
                if ext_code.size(address(_406)) <= 0:
                    stor15++
                    if stor15 < mem[96]:
                        idx = idx + 1
                        continue 
                else:
                    _447 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = _408
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    _805 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_805 + 32] = mem[_805 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _447 + 292
                    mem[_447 + 196] = 50
                    mem[_447 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_447 + 398 len 26]
                    if ext_code.size(address(_406)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _850 = mem[_805]
                    s = _805 + 32
                    t = _447 + 292
                    idx = mem[_805]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_447 + floor32(mem[_805]) + 292] = mem[_805 + -(mem[_805] % 32) + floor32(mem[_805]) + 64 len mem[_805] % 32] or Mask(8 * -(mem[_805] % 32) + 32, -(8 * -(mem[_805] % 32) + 32) + 256, mem[_447 + floor32(mem[_805]) + 292])
                    call address(_406).mem[_447 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_447 + 296 len _850 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_447 + 410 len 14]
                            stor15++
                            if stor15 < mem[96]:
                                s = 1
                                continue 
                            Mask(248, 0, stor16.field_8) = 1
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_447 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_447 + 296] = 32
                        mem[_447 + 328] = 50
                        idx = 0
                        while idx < 50:
                            mem[_447 + idx + 360] = mem[_447 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_447 + 392] = mem[_447 + 406 len 18]
                        revert with memory
                          from mem[64]
                           len _447 + -mem[64] + 424
                    mem[64] = _447 + ceil32(return_data.size) + 293
                    mem[_447 + 292] = return_data.size
                    mem[_447 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_447 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_447 + ceil32(return_data.size) + 297] = 32
                        idx = 0
                        while idx < 50:
                            mem[_447 + ceil32(return_data.size) + idx + 361] = mem[_447 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_447 + ceil32(return_data.size) + 393] = mem[_447 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 32, 50, mem[_447 + ceil32(return_data.size) + 361 len 64]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_447 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_447 + ceil32(return_data.size) + 411 len 14]
                    stor15++
                    if stor15 < mem[96]:
                        s = 1
                        continue 
            else:
                _421 = mem[64]
                mem[64] = mem[64] + 64
                mem[_421] = _408
                mem[_421 + 32] = address(_406)
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = _408
                tokenByIndex[tokenByIndex.length].field_256 = address(_406)
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = _408
                mem[32] = 3
                stor3[_408] = tokenByIndex.length
                emit Transfer(0, address(_406), _408);
                if ext_code.size(address(_406)) > 0:
                    _441 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = _408
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    _809 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_809 + 32] = mem[_809 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _441 + 292
                    mem[_441 + 196] = 50
                    mem[_441 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_441 + 398 len 26]
                    if ext_code.size(address(_406)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _854 = mem[_809]
                    t = _809 + 32
                    u = _441 + 292
                    s = mem[_809]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_441 + floor32(mem[_809]) + 292] = mem[_809 + -(mem[_809] % 32) + floor32(mem[_809]) + 64 len mem[_809] % 32] or Mask(8 * -(mem[_809] % 32) + 32, -(8 * -(mem[_809] % 32) + 32) + 256, mem[_441 + floor32(mem[_809]) + 292])
                    call address(_406).mem[_441 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_441 + 296 len _854 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_441 + 410 len 14]
                            stor15++
                            if stor15 < mem[96]:
                                idx = idx + 1
                                continue 
                            Mask(248, 0, stor16.field_8) = 1
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_441 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_441 + 296] = 32
                        mem[_441 + 328] = 50
                        idx = 0
                        while idx < 50:
                            mem[_441 + idx + 360] = mem[_441 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_441 + 392] = mem[_441 + 406 len 18]
                        revert with memory
                          from mem[64]
                           len _441 + -mem[64] + 424
                    mem[64] = _441 + ceil32(return_data.size) + 293
                    mem[_441 + 292] = return_data.size
                    mem[_441 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_441 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_441 + ceil32(return_data.size) + 297] = 32
                        idx = 0
                        while idx < 50:
                            mem[_441 + ceil32(return_data.size) + idx + 361] = mem[_441 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_441 + ceil32(return_data.size) + 393] = mem[_441 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 32, 50, mem[_441 + ceil32(return_data.size) + 361 len 64]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_441 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_441 + ceil32(return_data.size) + 411 len 14]
                stor15++
                if stor15 < mem[96]:
                    idx = idx + 1
                    continue 
        else:
            tokenOfOwnerByIndex[address(_406)]++
            tokenOfOwnerByIndex[address(_406)][tokenOfOwnerByIndex[address(_406)]] = _408
            tokenOfOwnerByIndex[address(_406)][1][_408] = tokenOfOwnerByIndex[address(_406)]
            mem[0] = _408
            mem[32] = 3
            if stor3[_408]:
                require stor3[_408] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[_408] - 1].field_256 = address(_406)
                tokenByIndex[stor3[_408] - 1].field_416 = 0
                emit Transfer(0, address(_406), _408);
                if ext_code.size(address(_406)) <= 0:
                    stor15++
                    if stor15 < mem[96]:
                        idx = idx + 1
                        continue 
                else:
                    _450 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = _408
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    _813 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_813 + 32] = mem[_813 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _450 + 292
                    mem[_450 + 196] = 50
                    mem[_450 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_450 + 398 len 26]
                    if ext_code.size(address(_406)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _858 = mem[_813]
                    s = _813 + 32
                    t = _450 + 292
                    idx = mem[_813]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_450 + floor32(mem[_813]) + 292] = mem[_813 + -(mem[_813] % 32) + floor32(mem[_813]) + 64 len mem[_813] % 32] or Mask(8 * -(mem[_813] % 32) + 32, -(8 * -(mem[_813] % 32) + 32) + 256, mem[_450 + floor32(mem[_813]) + 292])
                    call address(_406).mem[_450 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_450 + 296 len _858 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_450 + 410 len 14]
                            stor15++
                            if stor15 < mem[96]:
                                s = 1
                                continue 
                            Mask(248, 0, stor16.field_8) = 1
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_450 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_450 + 296] = 32
                        mem[_450 + 328] = 50
                        idx = 0
                        while idx < 50:
                            mem[_450 + idx + 360] = mem[_450 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_450 + 392] = mem[_450 + 406 len 18]
                        revert with memory
                          from mem[64]
                           len _450 + -mem[64] + 424
                    mem[64] = _450 + ceil32(return_data.size) + 293
                    mem[_450 + 292] = return_data.size
                    mem[_450 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_450 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_450 + ceil32(return_data.size) + 297] = 32
                        idx = 0
                        while idx < 50:
                            mem[_450 + ceil32(return_data.size) + idx + 361] = mem[_450 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_450 + ceil32(return_data.size) + 393] = mem[_450 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 32, 50, mem[_450 + ceil32(return_data.size) + 361 len 64]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_450 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_450 + ceil32(return_data.size) + 411 len 14]
                    stor15++
                    if stor15 < mem[96]:
                        s = 1
                        continue 
            else:
                _426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_426] = _408
                mem[_426 + 32] = address(_406)
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = _408
                tokenByIndex[tokenByIndex.length].field_256 = address(_406)
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = _408
                mem[32] = 3
                stor3[_408] = tokenByIndex.length
                emit Transfer(0, address(_406), _408);
                if ext_code.size(address(_406)) > 0:
                    _444 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = _408
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_409 + s + 32]
                        s = s + 32
                        continue 
                    _817 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_817 + 32] = mem[_817 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _444 + 292
                    mem[_444 + 196] = 50
                    mem[_444 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_444 + 398 len 26]
                    if ext_code.size(address(_406)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _862 = mem[_817]
                    t = _817 + 32
                    u = _444 + 292
                    s = mem[_817]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_444 + floor32(mem[_817]) + 292] = mem[_817 + -(mem[_817] % 32) + floor32(mem[_817]) + 64 len mem[_817] % 32] or Mask(8 * -(mem[_817] % 32) + 32, -(8 * -(mem[_817] % 32) + 32) + 256, mem[_444 + floor32(mem[_817]) + 292])
                    call address(_406).mem[_444 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_444 + 296 len _862 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_444 + 410 len 14]
                            stor15++
                            if stor15 < mem[96]:
                                idx = idx + 1
                                continue 
                            Mask(248, 0, stor16.field_8) = 1
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_444 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_444 + 296] = 32
                        mem[_444 + 328] = 50
                        idx = 0
                        while idx < 50:
                            mem[_444 + idx + 360] = mem[_444 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_444 + 392] = mem[_444 + 406 len 18]
                        revert with memory
                          from mem[64]
                           len _444 + -mem[64] + 424
                    mem[64] = _444 + ceil32(return_data.size) + 293
                    mem[_444 + 292] = return_data.size
                    mem[_444 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_444 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_444 + ceil32(return_data.size) + 297] = 32
                        idx = 0
                        while idx < 50:
                            mem[_444 + ceil32(return_data.size) + idx + 361] = mem[_444 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_444 + ceil32(return_data.size) + 393] = mem[_444 + ceil32(return_data.size) + 407 len 18]
                        revert with 0, 32, 50, mem[_444 + ceil32(return_data.size) + 361 len 64]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_444 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_444 + ceil32(return_data.size) + 411 len 14]
                stor15++
                if stor15 < mem[96]:
                    idx = idx + 1
                    continue 
        ('ge', ('stor', ('name', 'stor15', 15)), ('mem', ('range', 96, 32)))
        Mask(248, 0, stor16.field_8) = 1
}

function mintCredit() {
    if bool(stor12) != 1:
        revert with 0, 'Sale hasn't started'
    if tokenByIndex.length + 1 < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + 1 > 5188:
        revert with 0, 'Exceeds MAX_Supply'
    if balanceOfCredit[address(msg.sender)] < 1:
        revert with 0, 'No Credits'
    require -stor13 + 5188
    if stor17[-stor13 + 5187]:
        stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] = stor17[-stor13 + 5187]
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188]:
            if stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(msg.sender)][1][stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1
                tokenOfOwnerByIndex[address(msg.sender)][1][stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1]:
                require stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] - 1 < tokenByIndex.length
                tokenByIndex[stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] - 1].field_256 = msg.sender
                tokenByIndex[stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] - 1].field_416 = 0
                emit Transfer(0, msg.sender, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1, 128, 0
                    mem[704 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[676 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14]
                    else:
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14],
                                        Mask(144, -256, mem[502 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 635 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1, 128, 0
                    mem[768 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[740 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14]
                    else:
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14],
                                        Mask(144, -256, mem[566 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[612]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 699 len 14]
        else:
            if stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(msg.sender)][1][(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1
                tokenOfOwnerByIndex[address(msg.sender)][1][(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1]:
                require stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] - 1 < tokenByIndex.length
                tokenByIndex[stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] - 1].field_256 = msg.sender
                tokenByIndex[stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] - 1].field_416 = 0
                emit Transfer(0, msg.sender, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1, 128, 0
                    mem[704 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[676 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14]
                    else:
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14],
                                        Mask(144, -256, mem[502 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 635 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] = tokenByIndex.length
                emit Transfer(0, msg.sender, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1, 128, 0
                    mem[768 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[740 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14]
                    else:
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14],
                                        Mask(144, -256, mem[566 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[612]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 699 len 14]
    else:
        stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] = -stor13 + 5187
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188]:
            if stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(msg.sender)][1][stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1
                tokenOfOwnerByIndex[address(msg.sender)][1][stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1]:
                require stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] - 1 < tokenByIndex.length
                tokenByIndex[stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] - 1].field_256 = msg.sender
                tokenByIndex[stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] - 1].field_416 = 0
                emit Transfer(0, msg.sender, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1, 128, 0
                    mem[704 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[676 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14]
                    else:
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14],
                                        Mask(144, -256, mem[502 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 635 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor17[('map', 'difficulty', 'timestamp') % -stor13 + 5188] + 1, 128, 0
                    mem[768 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[740 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14]
                    else:
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14],
                                        Mask(144, -256, mem[566 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[612]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 699 len 14]
        else:
            if stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(msg.sender)][1][(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1
                tokenOfOwnerByIndex[address(msg.sender)][1][(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1]:
                require stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] - 1 < tokenByIndex.length
                tokenByIndex[stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] - 1].field_256 = msg.sender
                tokenByIndex[stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] - 1].field_416 = 0
                emit Transfer(0, msg.sender, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1, 128, 0
                    mem[704 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[676 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14]
                    else:
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[502 len 14],
                                        Mask(144, -256, mem[502 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 635 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor3[(('map', 'difficulty', 'timestamp') % -stor13 + 5188) + 1] = tokenByIndex.length
                emit Transfer(0, msg.sender, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1);
                if ext_code.size(msg.sender) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, (sha3(block.difficulty, block.timestamp) % -stor13 + 5188) + 1, 128, 0
                    mem[768 len 4] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[740 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with block.difficulty, block.timestamp
                        if Mask(32, 224, block.difficulty) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14]
                    else:
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[566 len 14],
                                        Mask(144, -256, mem[566 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[612]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 699 len 14]
    stor13++
    balanceOfCredit[address(msg.sender)]--
}



}
