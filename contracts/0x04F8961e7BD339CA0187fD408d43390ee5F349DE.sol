contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor10;
array of struct baseURI;
uint256 tokenID;
uint8 stor13;
mapping of uint256 stor14;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
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
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor5[arg1] - 1].field_256
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

function tokenID() payable {
    return tokenID
}

function safeguard() payable {
    return bool(stor13)
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function changeSafeguardStatus() payable {
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    if stor13:
        stor13 = 0
    else:
        stor13 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    owner = arg1
    emit TransferredOwnership(owner, address(arg1), block.timestamp);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function addPlatformAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    if stor1[address(arg1)]:
        revert with 0, 'already platform address'
    stor1[address(arg1)] = 1
    emit AddedPlatformAddress(address(arg1), block.timestamp);
}

function removePlatformAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    if bool(stor1[address(arg1)]) != 1:
        revert with 0, 'not platform address'
    stor1[address(arg1)] = 0
    emit RemovedPlatformAddress(address(arg1), block.timestamp);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    require not stor13
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    require not stor13
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function revertNftTokenId(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    require not stor13
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg2] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg2] - 1].field_256 != arg1:
        revert with 0, 'not owner of token'
    stor14[address(arg1)] = 0
    emit RevertCompleted(address(arg1), arg2, 0, block.timestamp);
}

function nftTokenId(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor14[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[206 len 22]
        if tokenOfOwnerByIndex[address(arg1)]:
            if not stor5[stor14[address(arg1)]]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[169 len 23],
                            mem[215 len 9]
            require stor5[stor14[address(arg1)]] - 1 < tokenByIndex.length
            if tokenByIndex[stor5[stor14[address(arg1)]] - 1].field_256 == arg1:
                return stor14[address(arg1)]
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor5[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg2] - 1].field_256, arg1, arg2);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    require not stor13
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724552433732314d657461646174613a204275726e206f66206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    approved[arg1] = 0
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, stor10[arg1].field_0 and (256 * not stor10[arg1].field_0) - 1):
        stor10[arg1].field_0 = 0
        if 31 < stor10[arg1].length:
            idx = 0
            while stor10[arg1].length + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] = 0
    if stor5[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor5[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor5[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor5[stor4[stor4.length - 1].field_0] = stor5[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor5[arg1] = 0
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x6e4552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        require stor5[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    require not stor13
    if not arg1:
        revert with 0, 'Invalid Address'
    if tokenID + 1 < tokenID:
        revert with 0, 'SafeMath: addition overflow'
    tokenID++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor5[stor12 + 1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor12 + 1]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenID + 1
        tokenOfOwnerByIndex[address(arg1)][1][stor12 + 1] = tokenOfOwnerByIndex[address(arg1)]
    if stor5[stor12 + 1]:
        require stor5[stor12 + 1] - 1 < tokenByIndex.length
        tokenByIndex[stor5[stor12 + 1] - 1].field_256 = arg1
        tokenByIndex[stor5[stor12 + 1] - 1].field_416 = 0
        emit Transfer(0, arg1, tokenID + 1);
        if ext_code.size(arg1):
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 160] = unknown_0x150b7a02(?????), msg.sender, 0, tokenID + 1, 128, 0
            mem[608 len 4] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args 0, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[406 len 14])
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
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenID + 1
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[stor12 + 1] = tokenByIndex.length
        emit Transfer(0, arg1, tokenID + 1);
        if ext_code.size(arg1):
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[484 len 160] = unknown_0x150b7a02(?????), msg.sender, 0, tokenID + 1, 128, 0
            mem[672 len 4] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args 0, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[470 len 14])
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
    stor14[address(arg1)] = tokenID
    emit MintedToken(address(arg1), tokenID, block.timestamp);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor5[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x6e4552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[297 len 23],
                    mem[343 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[393 len 23],
                    mem[439 len 9]
    require stor5[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
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
    if stor5[arg3]:
        require stor5[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            if not ext_code.size(arg2):
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
        stor5[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            if not ext_code.size(arg2):
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
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 10
    mem[64] = ceil32(stor10[arg1].length) + 128
    mem[96] = stor10[arg1].length
    mem[128] = stor10[arg1].field_0
    idx = 128
    s = 0
    while stor10[arg1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var23001 = ceil32(stor10[arg1].length)
        return Array(len=stor10[arg1].length, data=mem[128 len stor10[arg1].length])
    if stor10[arg1].length:
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor10[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length + 160 len floor32(stor10[arg1].length)] = mem[128 len floor32(stor10[arg1].length)]
        mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(stor10[arg1].length) + 160] = mem[floor32(stor10[arg1].length) + -stor10[arg1].length % 32 + 160 len stor10[arg1].length % 32] or Mask(8 * -stor10[arg1].length % 32 + 32, -(8 * -stor10[arg1].length % 32 + 32) + 256, mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(stor10[arg1].length) + 160])
        _1006 = mem[64]
        mem[64] = stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 160
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 160] = 32
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1083 = mem[_1006]
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1083 % 32:
            return 32, mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 192 len _1083 + 32]
        mem[floor32(_1083) + stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 224] = mem[floor32(_1083) + stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + -(_1083 % 32) + 256 len _1083 % 32]
        return 32, mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 192 len floor32(_1083) + 64]
    if not arg1:
        mem[64] = ceil32(stor10[arg1].length) + 192
        mem[ceil32(stor10[arg1].length) + 128] = 1
        mem[ceil32(stor10[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor10[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
        mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1048 = mem[_1002]
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1048 % 32:
            return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256 len _1048 + 32]
        mem[floor32(_1048) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 288] = mem[floor32(_1048) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + -(_1048 % 32) + 320 len _1048 % 32]
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256 len floor32(_1048) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor10[arg1].length) + 128] = s
    mem[64] = ceil32(stor10[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1246 = mem[_1232]
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1246 % 32:
            return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len _1246 + 32], 
        mem[floor32(_1246) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1246) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + -(_1246 % 32) + 288 len _1246 % 32]
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1246) + 64], 
    mem[ceil32(stor10[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 11
    mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1249 = mem[_1236]
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1249 % 32:
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len _1249 + 32], 
    mem[floor32(_1249) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1249) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + -(_1249 % 32) + 288 len _1249 % 32]
    return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1249) + 64], 
}



}
