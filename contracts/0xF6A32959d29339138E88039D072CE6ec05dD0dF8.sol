contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#  - createNFT(address arg1, uint256 arg2, bytes arg3)
#  - createNFTByTokenId(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
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
mapping of bool stor8;
array of struct baseURI;
address owner;
uint256 stor11;
mapping of uint8 stor12;
mapping of uint256 stor13;
mapping of uint8 stor14;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
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

function tokenByIndex(uint256 arg1) payable {
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

function ownerOf(uint256 arg1) payable {
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

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function _fallback() payable {
    revert
}

function getCatId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        return 0
    return stor13[arg1]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setMinters(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'nft: zero_address'
    if bool(stor14[address(arg1)]) == arg2:
        revert with 0, 'nft: no edit'
    stor14[address(arg1)] = uint8(arg2)
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function getNextTokenID() payable {
    mem[64] = 96
    if stor11 + 1 < stor11:
        revert with 0, 'SafeMath: addition overflow'
    if not var32001:
        if not stor12[var32002]:
            return var32002
    if var32002 + 1 < var32002:
        revert with 0, 'SafeMath: addition overflow'
    mem[0] = var32002 + 1
    mem[32] = 3
    var32001 = not not stor3[var32002 + 1]
    var32002 = var32002 + 1
    continue 
}

function transferOwnership(address arg1) payable {
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

function delStandbyTokenIds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 12
        stor12[cd[((32 * idx) + arg1 + 36)]] = 0
        idx = idx + 1
        continue 
}

function addStandbyTokenIds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 12
        stor12[cd[((32 * idx) + arg1 + 36)]] = 1
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
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

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != msg.sender:
        if not stor5[address(arg1)][address(msg.sender)]:
            revert with 0, 'nft: illegal request'
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg2] - 1].field_256 != arg1:
        revert with 0, 'from is not owner'
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    approved[arg2] = 0
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, 0, arg2);
    if Mask(255, 1, (256 * not bool(stor8[arg2])) - 1 and uint256(stor8[arg2])):
        uint256(stor8[arg2]) = 0
        if 31 < stor8[arg2].length:
            idx = 0
            while stor8[arg2].length + 31 / 32 > idx:
                uint256(stor8[arg2][idx]) = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][1][arg2]:
        require tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][1][arg2] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][1][arg2]] = tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]]
        tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][1][tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]]] = tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][1][arg2]
        require tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256]--
        tokenOfOwnerByIndex[stor2[stor3[arg2] - 1].field_256][1][arg2] = 0
    if stor3[arg2]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor3[arg2] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg2] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor3[arg2] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor3[stor2[stor2.length - 1].field_0] = stor3[arg2]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor3[arg2] = 0
    emit Transfer(tokenByIndex[stor3[arg2] - 1].field_256, 0, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 'nft: NONEXISTENT_TOKEN'
    mem[32] = 3
    if not stor3[arg1]:
        mem[96] = baseURI.length
        mem[0] = 9
        mem[128] = uint256(baseURI.field_0)
        idx = 128
        s = 0
        while baseURI.length + 96 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(baseURI.length) + 128] = 1
            mem[ceil32(baseURI.length) + 160] = '0'
            mem[64] = ceil32(baseURI.length) + 256
            mem[ceil32(baseURI.length) + 192] = 1
            mem[ceil32(baseURI.length) + 224] = '0'
            mem[ceil32(baseURI.length) + 288 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
            mem[ceil32(baseURI.length) + floor32(baseURI.length) + 288] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(baseURI.length) + floor32(baseURI.length) + 288])
            mem[baseURI.length + ceil32(baseURI.length) + 288 len 0] = None
            var42001 = ceil32(baseURI.length) + 160
            mem[baseURI.length + ceil32(baseURI.length) + 289] = '/'
            mem[baseURI.length + ceil32(baseURI.length) + 290 len 0] = None
            mem[baseURI.length + ceil32(baseURI.length) + 290 len 31] = Mask(248, 0, '/')
            mem[baseURI.length + ceil32(baseURI.length) + 291] = '.json'
            mem[64] = baseURI.length + ceil32(baseURI.length) + 296
            mem[baseURI.length + ceil32(baseURI.length) + 296] = 32
            mem[baseURI.length + ceil32(baseURI.length) + 328] = mem[ceil32(baseURI.length) + 256]
            mem[baseURI.length + ceil32(baseURI.length) + 360 len ceil32(mem[ceil32(baseURI.length) + 256])] = mem[ceil32(baseURI.length) + 288 len ceil32(mem[ceil32(baseURI.length) + 256])]
            if not mem[ceil32(baseURI.length) + 256] % 32:
                return 32, mem[baseURI.length + ceil32(baseURI.length) + 328 len mem[ceil32(baseURI.length) + 256] + 32]
            mem[floor32(mem[ceil32(baseURI.length) + 256]) + baseURI.length + ceil32(baseURI.length) + 360] = mem[floor32(mem[ceil32(baseURI.length) + 256]) + baseURI.length + ceil32(baseURI.length) + -(mem[ceil32(baseURI.length) + 256] % 32) + 392 len mem[ceil32(baseURI.length) + 256] % 32]
            return 32, mem[baseURI.length + ceil32(baseURI.length) + 328 len floor32(mem[ceil32(baseURI.length) + 256]) + 64]
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[ceil32(baseURI.length) + 128] = s
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
        mem[64] = ceil32(baseURI.length) + ceil32(s) + 224
        mem[ceil32(baseURI.length) + ceil32(s) + 160] = 1
        mem[ceil32(baseURI.length) + ceil32(s) + 192] = '0'
        mem[ceil32(baseURI.length) + ceil32(s) + 256 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
        mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 288 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 288 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256] = '/'
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257 len 0] = None
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257 len 31] = Mask(248, 0, '/')
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 258] = '.json'
        mem[64] = s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263] = 32
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295] = mem[ceil32(baseURI.length) + ceil32(s) + 224]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])] = mem[ceil32(baseURI.length) + ceil32(s) + 256 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])]
        if not mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32:
            return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len mem[ceil32(baseURI.length) + ceil32(s) + 224] + 32], 
        mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32) + 359 len mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32]
        return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + 64], 
    mem[32] = 13
    mem[96] = baseURI.length
    mem[0] = 9
    mem[128] = uint256(baseURI.field_0)
    idx = 128
    s = 0
    while baseURI.length + 96 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(baseURI.length) + 128] = 1
        mem[ceil32(baseURI.length) + 160] = '0'
        if not stor13[arg1]:
            mem[64] = ceil32(baseURI.length) + 256
            mem[ceil32(baseURI.length) + 192] = 1
            mem[ceil32(baseURI.length) + 224] = '0'
            mem[ceil32(baseURI.length) + 288 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
            mem[ceil32(baseURI.length) + floor32(baseURI.length) + 288] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(baseURI.length) + floor32(baseURI.length) + 288])
            mem[baseURI.length + ceil32(baseURI.length) + 288 len 0] = None
            var42001 = ceil32(baseURI.length) + 160
            mem[baseURI.length + ceil32(baseURI.length) + 289] = '/'
            mem[baseURI.length + ceil32(baseURI.length) + 290 len 0] = None
            var45001 = ceil32(baseURI.length) + 224
            mem[baseURI.length + ceil32(baseURI.length) + 290 len 31] = Mask(248, 0, '/')
            mem[baseURI.length + ceil32(baseURI.length) + 291] = '.json'
            mem[64] = baseURI.length + ceil32(baseURI.length) + 296
            mem[baseURI.length + ceil32(baseURI.length) + 296] = 32
            mem[baseURI.length + ceil32(baseURI.length) + 328] = mem[ceil32(baseURI.length) + 256]
            mem[baseURI.length + ceil32(baseURI.length) + 360 len ceil32(mem[ceil32(baseURI.length) + 256])] = mem[ceil32(baseURI.length) + 288 len ceil32(mem[ceil32(baseURI.length) + 256])]
            if not mem[ceil32(baseURI.length) + 256] % 32:
                return 32, mem[baseURI.length + ceil32(baseURI.length) + 328 len mem[ceil32(baseURI.length) + 256] + 32]
            mem[floor32(mem[ceil32(baseURI.length) + 256]) + baseURI.length + ceil32(baseURI.length) + 360] = mem[floor32(mem[ceil32(baseURI.length) + 256]) + baseURI.length + ceil32(baseURI.length) + -(mem[ceil32(baseURI.length) + 256] % 32) + 392 len mem[ceil32(baseURI.length) + 256] % 32]
            return 32, mem[baseURI.length + ceil32(baseURI.length) + 328 len floor32(mem[ceil32(baseURI.length) + 256]) + 64]
        s = 0
        idx = stor13[arg1]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        require s <= test266151307()
        mem[ceil32(baseURI.length) + 192] = s
        mem[64] = ceil32(baseURI.length) + ceil32(s) + 224
        if s:
            mem[ceil32(baseURI.length) + 224 len s] = call.data[calldata.size len s]
            t = s - 1
            idx = stor13[arg1]
            while idx:
                require t < s
                mem[t + ceil32(baseURI.length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(baseURI.length) + ceil32(s) + 256 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
            mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 288 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256 len 0] = None
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257] = '/'
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 258 len floor32(s)] = mem[ceil32(baseURI.length) + 224 len floor32(s)]
            var54001 = ceil32(baseURI.length) + floor32(s) + 224
        else:
            t = s - 1
            idx = stor13[arg1]
            while idx:
                require t < s
                mem[t + ceil32(baseURI.length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(baseURI.length) + ceil32(s) + 256 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
            var47001 = floor32(baseURI.length) + 128
            var47002 = ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 256
            mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 288 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256 len 0] = None
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257] = '/'
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 258 len floor32(s)] = mem[ceil32(baseURI.length) + 224 len floor32(s)]
            var53001 = ceil32(baseURI.length) + floor32(s) + 224
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 290 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 256 len s % 32]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 258] = '.json'
        mem[64] = s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263] = 32
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295] = mem[ceil32(baseURI.length) + ceil32(s) + 224]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])] = mem[ceil32(baseURI.length) + ceil32(s) + 256 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])]
        if not mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32:
            return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len mem[ceil32(baseURI.length) + ceil32(s) + 224] + 32], 
        mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32) + 359 len mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32]
        return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(baseURI.length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(baseURI.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if stor13[arg1]:
            t = 0
            idx = stor13[arg1]
            while idx:
                t = t + 1
                idx = idx / 10
                continue 
            require t <= test266151307()
            mem[ceil32(baseURI.length) + ceil32(s) + 160] = t
            mem[64] = ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192
            if not t:
                u = t - 1
                idx = stor13[arg1]
                while idx:
                    require u < t
                    mem[u + ceil32(baseURI.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
                var55001 = floor32(baseURI.length) + 128
            else:
                mem[ceil32(baseURI.length) + ceil32(s) + 192 len t] = call.data[calldata.size len t]
                u = t - 1
                idx = stor13[arg1]
                while idx:
                    require u < t
                    mem[u + ceil32(baseURI.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
            mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + floor32(baseURI.length) + -baseURI.length % 32 + 256 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
            mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
            mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224] = '/'
            mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 225 len floor32(t)] = mem[ceil32(baseURI.length) + ceil32(s) + 192 len floor32(t)]
            mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + floor32(t) + -(t % 32) + 257 len t % 32] = mem[ceil32(baseURI.length) + ceil32(s) + floor32(t) + -(t % 32) + 224 len t % 32]
            mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 225] = '.json'
            mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 230] = 32
            mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 262] = mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]
            mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 294 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192])] = mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192])]
            if not mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] % 32:
                return 32, mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 262 len mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] + 32], 
            mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]) + t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 294] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]) + t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + -(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] % 32) + 326 len mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] % 32]
            return 32, mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 262 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]) + 64], 
        mem[64] = ceil32(baseURI.length) + ceil32(s) + 224
        mem[ceil32(baseURI.length) + ceil32(s) + 160] = 1
        mem[ceil32(baseURI.length) + ceil32(s) + 192] = '0'
        mem[ceil32(baseURI.length) + ceil32(s) + 256 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
        var47001 = floor32(baseURI.length) + 128
        var47002 = ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 256
        mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 288 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 288 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256] = '/'
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257 len 0] = None
        var53001 = ceil32(baseURI.length) + ceil32(s) + 192
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257 len 31] = Mask(248, 0, '/')
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 258] = '.json'
        mem[64] = s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263] = 32
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295] = mem[ceil32(baseURI.length) + ceil32(s) + 224]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])] = mem[ceil32(baseURI.length) + ceil32(s) + 256 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])]
        if not mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32:
            return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len mem[ceil32(baseURI.length) + ceil32(s) + 224] + 32], 
        mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32) + 359 len mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32]
        return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + 64], 
    mem[ceil32(baseURI.length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(baseURI.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    if not stor13[arg1]:
        mem[64] = ceil32(baseURI.length) + ceil32(s) + 224
        mem[ceil32(baseURI.length) + ceil32(s) + 160] = 1
        mem[ceil32(baseURI.length) + ceil32(s) + 192] = '0'
        mem[ceil32(baseURI.length) + ceil32(s) + 256 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
        mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 288 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
        mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 288 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256] = '/'
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257 len 0] = None
        var54001 = ceil32(baseURI.length) + ceil32(s) + 192
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 257 len 31] = Mask(248, 0, '/')
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 258] = '.json'
        mem[64] = s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 263] = 32
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295] = mem[ceil32(baseURI.length) + ceil32(s) + 224]
        mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])] = mem[ceil32(baseURI.length) + ceil32(s) + 256 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 224])]
        if not mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32:
            return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len mem[ceil32(baseURI.length) + ceil32(s) + 224] + 32], 
        mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 327] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32) + 359 len mem[ceil32(baseURI.length) + ceil32(s) + 224] % 32]
        return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 295 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 224]) + 64], 
    t = 0
    idx = stor13[arg1]
    while idx:
        t = t + 1
        idx = idx / 10
        continue 
    require t <= test266151307()
    mem[ceil32(baseURI.length) + ceil32(s) + 160] = t
    mem[64] = ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192
    if t:
        mem[ceil32(baseURI.length) + ceil32(s) + 192 len t] = call.data[calldata.size len t]
    u = t - 1
    idx = stor13[arg1]
    while idx:
        require u < t
        mem[u + ceil32(baseURI.length) + ceil32(s) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        u = u - 1
        idx = idx / 10
        continue 
    mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
    mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + floor32(baseURI.length) + -baseURI.length % 32 + 256 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
    mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
    mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224] = '/'
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 225 len floor32(t)] = mem[ceil32(baseURI.length) + ceil32(s) + 192 len floor32(t)]
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + floor32(t) + -(t % 32) + 257 len t % 32] = mem[ceil32(baseURI.length) + ceil32(s) + floor32(t) + -(t % 32) + 224 len t % 32]
    mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 225] = '.json'
    mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 230] = 32
    mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 262] = mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]
    mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 294 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192])] = mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 224 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192])]
    if not mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] % 32:
        return 32, mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 262 len mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] + 32], 
    mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]) + t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 294] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]) + t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + -(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] % 32) + 326 len mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192] % 32]
    return Array(len=mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192], data=mem[t + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 294 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + ceil32(t) + 192]) + 32]), 
}



}
