contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6cc596a(?)
#
const _burn = 0xf000000000000000000000000000000000000000

const sub_46d08da5(?) = 0xfbc3c04845162f067a0b6f8934383e63899c3524

const _sushi = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506

const sub_fbbc99ff(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


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
array of struct _owners;
uint256 _tokenIds;
uint8 sub_b6ba8464;
uint256 stor13;
array of struct nameOf;
array of uint256 hashOf;
mapping of uint256 sub_0fdd71ae;
mapping of uint256 tokenIdForHash;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function nameOf(uint256 arg1) {
    return uint256(nameOf[arg1][0 len nameOf[arg1].length].field_0)
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

function sub_0ae15582(?) {
    return _tokenIds
}

function sub_0fdd71ae(?) {
    require calldata.size - 4 >= 32
    return sub_0fdd71ae[arg1]
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return uint256(tokenByIndex[arg1].field_0)
}

function tokenIdForHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return tokenIdForHash[arg1]
}

function sub_60e511f3(?) {
    return sub_b6ba8464
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
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() {
    return uint256(baseURI[0 len baseURI.length].field_0)
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

function hashOf(uint256 arg1) {
    return hashOf[arg1][0 len hashOf[arg1].length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _owners.length
    return address(_owners[arg1].field_0)
}

function _tokenIds() {
    return _tokenIds
}

function sub_b6ba8464(?) {
    return sub_b6ba8464
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_757db97d(?) {
    require calldata.size - 4 >= 32
    return (2^arg1 * stor13)
}

function priceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ((10^18 * arg1^3 / 10001000100) + 10 * 10^18)
}

function isOwner() {
    idx = 0
    while idx < _owners.length:
        mem[0] = 10
        if address(_owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_ad2954bc(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _owners.length:
        mem[0] = 10
        if address(_owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        sub_b6ba8464 = arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6e4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function getOwners() {
    if not _owners.length:
        mem[(32 * _owners.length) + 128] = 32
        mem[(32 * _owners.length) + 160] = _owners.length
        mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
        return memory
          from (32 * _owners.length) + 128
           len (96 * _owners.length) + 64
    mem[128] = address(_owners.field_0)
    idx = 128
    s = 0
    while (32 * _owners.length) + 96 > idx:
        mem[idx + 32] = address(_owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _owners.length) + 192 len floor32(_owners.length)] = mem[128 len floor32(_owners.length)]
    return Array(len=_owners.length, data=mem[128 len floor32(_owners.length)], mem[(32 * _owners.length) + floor32(_owners.length) + 192 len (32 * _owners.length) - floor32(_owners.length)]), 
}

function sub_bb58edce(?) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < _owners.length:
        mem[0] = 10
        if address(_owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        if arg2 == this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6446756e6374696f6e206f6e6c7920776f726b73206f6e206f7468657220746f6b656e73,
                        mem[200 len 28]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                34,
                0x6e4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273,
                mem[198 len 30]
}

function setOwners(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < _owners.length:
        mem[0] = 10
        if address(_owners[idx].field_0) != msg.sender:
            idx = idx + 1
            continue 
        _owners.length = arg1.length
        if not arg1.length:
            idx = sha3(10)
            while sha3(10) + _owners.length > idx:
                address(stor[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(10)
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                address(stor[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(10) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
            while sha3(10) + _owners.length > idx:
                address(stor[idx]) = 0
                idx = idx + 1
                continue 
    revert with 0, 32, 34, 0x6e4f6e6c7920617661696c61626c6520746f20636f6e7472616374206f776e657273, mem[(32 * arg1.length) + 230 len 30]
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
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x214552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
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
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
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
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x2e4552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x2e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x214552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
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
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x2e4552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[297 len 23],
                    mem[343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x2e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x214552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[393 len 23],
                    mem[439 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
            mem[896 len 4] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args 0, mem[868 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[694 len 14],
                            Mask(144, -256, mem[694 len 14]) << 256
            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[694 len 14],
                            Mask(144, -256, mem[694 len 14]) << 256
            require return_data.size >= 32
            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 827 len 14]
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
            mem[960 len 4] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args 0, mem[932 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[758 len 14],
                            Mask(144, -256, mem[758 len 14]) << 256
            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[758 len 14],
                            Mask(144, -256, mem[758 len 14]) << 256
            require return_data.size >= 32
            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
    mem[128] = uint256(stor8[arg1].field_0)
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor8[arg1][s].field_256)
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
        mem[idx + 32] = uint256(baseURI[s].field_256)
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
        mem[64] = stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 32
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var34001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256])
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len 0] = None
        var37001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192
        mem[64] = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 257
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 257] = 32
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return 32, mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192
    if s:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len s] = code.data[22839 len s]
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

function sub_47472211(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 41
    mem[ceil32(arg2.length) + 160 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 201 len 23],
                    mem[ceil32(arg2.length) + 247 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg1] - 1].field_256) != msg.sender:
        revert with 0, 'You do not own this Fantum!'
    mem[ceil32(arg2.length) + 224] = nameOf[arg1].length
    mem[ceil32(arg2.length) + 256] = uint256(nameOf[arg1].field_0)
    idx = ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg2.length) + nameOf[arg1].length + 224 > idx:
        mem[idx + 32] = uint256(nameOf[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 256] = 18
    if uint256(stor[mem[ceil32(arg2.length) + ceil32(stor14[arg1].length) + floor32(arg2.length) + 256 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]):
        revert with 0, 
                    32,
                    41,
                    0x7254686973206e616d6520616c7265616479206578697374732c2063686f6f736520616e6f74686572,
                    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 365 len 23]
    mem[0] = arg1
    mem[32] = 16
    if msg.value < 2^sub_0fdd71ae[arg1] * stor13:
        revert with 0, 'Not enough FTM sent to name.'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Was not able to wrap FTM.'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 256] = 2
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 320] = 0xfbc3c04845162f067a0b6f8934383e63899c3524
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 356] = ext_call.return_data[0]
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 388] = 0
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 452] = this.address
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 484] = block.timestamp
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 420] = 160
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 516] = 2
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 548 len 0] = None
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 548 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352
    require return_data.size >= 32
    _1235 = mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28] + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352] <= 4294967296 and mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28] + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352]) + 32 <= return_data.size
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352] = mem[mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352 len 4], ext_call.return_data[0 len 28] + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352]
    _1247 = mem[_1235 + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352]
    mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384 len floor32(mem[_1235 + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352])] = mem[_1235 + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 384 len floor32(mem[_1235 + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + 352])]
    mem[64] = (32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384
    require mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352] - 1 < mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352]
    _1538 = mem[(32 * mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352] - 1) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384]
    if mem[(32 * mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352] - 1) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384] <= 0:
        revert with 0, 
                    32,
                    55,
                    0x214e6f20464f4f20776173207075726368617365642c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 507 len 9]
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), mem[(32 * mem[ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 352] - 1) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 420] = 0xf000000000000000000000000000000000000000
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 452] = _1538
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), 0xf000000000000000000000000000000000000000, _1538
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 388] = this.address
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    67,
                    0x73446964206e6f74207375636365737366756c6c79206275726e20746f6b656e732c20616374696f6e206e6f7420706f737369626c6520617420746869732074696d65,
                    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 519 len 29]
    sub_0fdd71ae[arg1]++
    mem[32] = 14
    mem[0] = sha3(arg1, 14)
    uint256(nameOf[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384 len floor32(nameOf[arg1].length)] = mem[ceil32(arg2.length) + 256 len floor32(nameOf[arg1].length)]
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + floor32(nameOf[arg1].length) + -nameOf[arg1].length % 32 + 416 len nameOf[arg1].length % 32] = mem[ceil32(arg2.length) + -nameOf[arg1].length % 32 + floor32(nameOf[arg1].length) + 288 len nameOf[arg1].length % 32]
    mem[nameOf[arg1].length + (32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384] = 18
    uint256(stor[sha3(mem[(32 * _1247) + ceil32(arg2.length) + ceil32(stor14[arg1].length) + ceil32(return_data.size) + 384 len stor14[arg1].length + 32])]) = 0
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + floor32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + (32 * _1247) + ceil32(arg2.length) + ceil32(nameOf[arg1].length) + ceil32(return_data.size) + 384] = 18
    uint256(stor[mem[(32 * _1247) + ceil32(arg2.length) + ceil32(stor14[arg1].length) + ceil32(return_data.size) + floor32(arg2.length) + 384 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = arg1
    emit 0x8813ddcd: arg1, Array(len=arg2.length, data=arg2[all])
    return 1
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
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x2e4552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 297 len 23],
                    mem[ceil32(arg4.length) + 343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 
                    32,
                    41,
                    0x2e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 429 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x214552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
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
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
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
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[arg4.length + ceil32(arg4.length) + 814 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 708 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]
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
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 694 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 694 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 694 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 694 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 612] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 644 len arg4.length % 32]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 846 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 740 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]
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
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 772]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 859 len 14]
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
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
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[arg4.length + ceil32(arg4.length) + 878 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 772 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]
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
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 758 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 758 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 758 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 891 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 676] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 708 len arg4.length % 32]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 910 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 804 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]
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
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 836]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x214552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 923 len 14]
}



}
