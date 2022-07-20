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
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
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
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    if stor5[address(stor2[stor3[arg1] - 1].field_256)][address(arg2)]:
        return bool(stor5[address(stor2[stor3[arg1] - 1].field_256)][address(arg2)])
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
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
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
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
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
    if address(tokenByIndex[stor3[arg1] - 1].field_256) == msg.sender:
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
                    if not stor5[address(stor2[stor3[arg1] - 1].field_256)][address(msg.sender)]:
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
    emit Approval(address(tokenByIndex[stor3[arg1] - 1].field_256), 0, arg1);
    if Mask(255, 1, (256 * not bool(stor8[arg1].field_0)) - 1 and stor8[arg1].field_0):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]:
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1] - 1 < tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]] = tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1]
        require tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]] = 0
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)]--
        tokenOfOwnerByIndex[address(stor2[stor3[arg1] - 1].field_256)][1][arg1] = 0
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
    emit Transfer(address(tokenByIndex[stor3[arg1] - 1].field_256), 0, arg1);
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
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
        address(tokenByIndex[stor3[stor14 + 1] - 1].field_256) = arg1
        Mask(96, 0, tokenByIndex[stor3[stor14 + 1] - 1].field_416) = 0
        emit Transfer(0, arg1, stor14 + 1);
        if ext_code.size(arg1) <= 0:
            if not stor3[stor14 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg2.length) + 272 len 20]
            stor8[stor14 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor14++
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
            if ext_code.size(arg1) <= 0:
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
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[406 len 14],
                            Mask(144, -256, mem[406 len 14]) << 256
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[406 len 14],
                            Mask(144, -256, mem[406 len 14]) << 256
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
        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[stor14 + 1] = tokenByIndex.length
        emit Transfer(0, arg1, stor14 + 1);
        if ext_code.size(arg1) <= 0:
            if not stor3[stor14 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg2.length) + 336 len 20]
            stor8[stor14 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor14++
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
            if ext_code.size(arg1) <= 0:
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
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[470 len 14],
                            Mask(144, -256, mem[470 len 14]) << 256
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[470 len 14],
                            Mask(144, -256, mem[470 len 14]) << 256
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
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 517] = stor14 + 1
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 549] = arg1
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 613] = msg.sender
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 581] = 128
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 645] = arg2.length
            emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                        Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                        mem[ceil32(return_data.size) + arg2.length + 549 len (2 * ceil32(arg2.length)) + -arg2.length + 128],
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
        if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
            if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
                if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
            else:
                if stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                    if not stor3[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                    mem[265 len 23],
                                    mem[311 len 9]
                    require stor3[arg3] - 1 < tokenByIndex.length
                    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
                    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
                        if not stor3[arg3]:
                            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[400 len 20]
                        if approved[arg3] != msg.sender:
                            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
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
                    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
                        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[493 len 23]
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
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
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
        var38001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
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

function sub_36ad0b5d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if stor14 + 1 < stor14:
            revert with 0, 'SafeMath: addition overflow'
        _677 = mem[64]
        mem[64] = mem[64] + 32
        mem[_677] = 0
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor14 + 1]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])][1][stor14 + 1]:
            mem[0] = stor14 + 1
            mem[32] = 3
            if stor3[stor14 + 1]:
                require stor3[stor14 + 1] - 1 < tokenByIndex.length
                mem[0] = 2
                address(tokenByIndex[stor3[stor14 + 1] - 1].field_256) = address(cd[((32 * idx) + cd[4] + 36)])
                Mask(96, 0, tokenByIndex[stor3[stor14 + 1] - 1].field_416) = 0
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), stor14 + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                    _739 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                    mem[_739] = ('cd', 36).length
                    mem[_739 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_739 + ('cd', 36).length + 32] = 0
                    if not stor3[stor14 + 1]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor14 + 1, 8)
                    stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                    t = sha3(sha3(stor14 + 1, 8))
                    s = _739 + 32
                    while _739 + ('cd', 36).length + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                    while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor14++
                    _2093 = mem[64]
                    mem[mem[64]] = stor14 + 1
                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 96] = msg.sender
                    mem[mem[64] + 64] = 128
                    mem[_2093 + 128] = ('cd', 36).length
                    mem[_2093 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_2093 + ('cd', 36).length + 160] = 0
                    emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                mem[mem[64] len _2093 + ceil32(('cd', 36).length) + -mem[64] + 160],
                else:
                    _715 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = stor14 + 1
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_677 + s + 32]
                        s = s + 32
                        continue 
                    _1357 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1357 + 32] = mem[_1357 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _715 + 292
                    mem[_715 + 196] = 50
                    mem[_715 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_715 + 398 len 26]
                    if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1402 = mem[_1357]
                    t = _1357 + 32
                    u = mem[64]
                    s = mem[_1357]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1357])] = mem[_1357 + floor32(mem[_1357]) + -(mem[_1357] % 32) + 64 len mem[_1357] % 32] or Mask(8 * -(mem[_1357] % 32) + 32, -(8 * -(mem[_1357] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1357])])
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1402 + _715 + -mem[64] + 288]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2001 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_715 + 196]
                            _2003 = mem[_715 + 196]
                            idx = 0
                            while idx < _2003:
                                mem[_2001 + idx + 68] = mem[_715 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2003 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2003 + _2001 + -mem[64] + 68
                            mem[floor32(_2003) + _2001 + 68] = mem[floor32(_2003) + _2001 + -(_2003 % 32) + 100 len _2003 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2003) + _2001 + -mem[64] + 100
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2201 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2201] = ('cd', 36).length
                        mem[_2201 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2201 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2201 + 32
                        while _2201 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2617 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2617 + 128] = ('cd', 36).length
                        mem[_2617 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2617 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2617 + ceil32(('cd', 36).length) + -mem[64] + 160],
                    else:
                        _1977 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1977] = return_data.size
                        mem[_1977 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2005 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_715 + 196]
                            _2007 = mem[_715 + 196]
                            idx = 0
                            while idx < _2007:
                                mem[_2005 + idx + 68] = mem[_715 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2007 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2007 + _2005 + -mem[64] + 68
                            mem[floor32(_2007) + _2005 + 68] = mem[floor32(_2007) + _2005 + -(_2007 % 32) + 100 len _2007 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2007) + _2005 + -mem[64] + 100
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_1977 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2202 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2202] = ('cd', 36).length
                        mem[_2202 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2202 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2202 + 32
                        while _2202 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2619 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2619 + 128] = ('cd', 36).length
                        mem[_2619 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2619 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2619 + ceil32(('cd', 36).length) + -mem[64] + 160],
            else:
                _689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_689] = stor14 + 1
                mem[_689 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor14 + 1
                address(tokenByIndex[tokenByIndex.length].field_256) = address(cd[((32 * idx) + cd[4] + 36)])
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                mem[0] = stor14 + 1
                mem[32] = 3
                stor3[stor14 + 1] = tokenByIndex.length
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), stor14 + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                    _728 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                    mem[_728] = ('cd', 36).length
                    mem[_728 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_728 + ('cd', 36).length + 32] = 0
                    if not stor3[stor14 + 1]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor14 + 1, 8)
                    stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                    t = sha3(sha3(stor14 + 1, 8))
                    s = _728 + 32
                    while _728 + ('cd', 36).length + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                    while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor14++
                    _2107 = mem[64]
                    mem[mem[64]] = stor14 + 1
                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 96] = msg.sender
                    mem[mem[64] + 64] = 128
                    mem[_2107 + 128] = ('cd', 36).length
                    mem[_2107 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_2107 + ('cd', 36).length + 160] = 0
                    emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                mem[mem[64] len _2107 + ceil32(('cd', 36).length) + -mem[64] + 160],
                else:
                    _709 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = stor14 + 1
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_677 + s + 32]
                        s = s + 32
                        continue 
                    _1361 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1361 + 32] = mem[_1361 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _709 + 292
                    mem[_709 + 196] = 50
                    mem[_709 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_709 + 398 len 26]
                    if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1406 = mem[_1361]
                    t = _1361 + 32
                    u = mem[64]
                    s = mem[_1361]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1361])] = mem[_1361 + floor32(mem[_1361]) + -(mem[_1361] % 32) + 64 len mem[_1361] % 32] or Mask(8 * -(mem[_1361] % 32) + 32, -(8 * -(mem[_1361] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1361])])
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1406 + _709 + -mem[64] + 288]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2017 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_709 + 196]
                            _2019 = mem[_709 + 196]
                            idx = 0
                            while idx < _2019:
                                mem[_2017 + idx + 68] = mem[_709 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2019 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2019 + _2017 + -mem[64] + 68
                            mem[floor32(_2019) + _2017 + 68] = mem[floor32(_2019) + _2017 + -(_2019 % 32) + 100 len _2019 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2019) + _2017 + -mem[64] + 100
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2205 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2205] = ('cd', 36).length
                        mem[_2205 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2205 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2205 + 32
                        while _2205 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2625 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2625 + 128] = ('cd', 36).length
                        mem[_2625 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2625 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2625 + ceil32(('cd', 36).length) + -mem[64] + 160],
                    else:
                        _1979 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1979] = return_data.size
                        mem[_1979 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2021 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_709 + 196]
                            _2023 = mem[_709 + 196]
                            idx = 0
                            while idx < _2023:
                                mem[_2021 + idx + 68] = mem[_709 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2023 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2023 + _2021 + -mem[64] + 68
                            mem[floor32(_2023) + _2021 + 68] = mem[floor32(_2023) + _2021 + -(_2023 % 32) + 100 len _2023 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2023) + _2021 + -mem[64] + 100
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_1979 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2206 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2206] = ('cd', 36).length
                        mem[_2206 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2206 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2206 + 32
                        while _2206 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2627 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2627 + 128] = ('cd', 36).length
                        mem[_2627 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2627 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2627 + ceil32(('cd', 36).length) + -mem[64] + 160],
        else:
            tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])]++
            tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])][tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])]] = stor14 + 1
            tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])][1][stor14 + 1] = tokenOfOwnerByIndex[address(cd[((32 * idx) + cd[4] + 36)])]
            mem[0] = stor14 + 1
            mem[32] = 3
            if stor3[stor14 + 1]:
                require stor3[stor14 + 1] - 1 < tokenByIndex.length
                mem[0] = 2
                address(tokenByIndex[stor3[stor14 + 1] - 1].field_256) = address(cd[((32 * idx) + cd[4] + 36)])
                Mask(96, 0, tokenByIndex[stor3[stor14 + 1] - 1].field_416) = 0
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), stor14 + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                    _747 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                    mem[_747] = ('cd', 36).length
                    mem[_747 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_747 + ('cd', 36).length + 32] = 0
                    if not stor3[stor14 + 1]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor14 + 1, 8)
                    stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                    t = sha3(sha3(stor14 + 1, 8))
                    s = _747 + 32
                    while _747 + ('cd', 36).length + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                    while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor14++
                    _2121 = mem[64]
                    mem[mem[64]] = stor14 + 1
                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 96] = msg.sender
                    mem[mem[64] + 64] = 128
                    mem[_2121 + 128] = ('cd', 36).length
                    mem[_2121 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_2121 + ('cd', 36).length + 160] = 0
                    emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                mem[mem[64] len _2121 + ceil32(('cd', 36).length) + -mem[64] + 160],
                else:
                    _718 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = stor14 + 1
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_677 + s + 32]
                        s = s + 32
                        continue 
                    _1365 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1365 + 32] = mem[_1365 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _718 + 292
                    mem[_718 + 196] = 50
                    mem[_718 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_718 + 398 len 26]
                    if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1410 = mem[_1365]
                    t = _1365 + 32
                    u = mem[64]
                    s = mem[_1365]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1365])] = mem[_1365 + floor32(mem[_1365]) + -(mem[_1365] % 32) + 64 len mem[_1365] % 32] or Mask(8 * -(mem[_1365] % 32) + 32, -(8 * -(mem[_1365] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1365])])
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1410 + _718 + -mem[64] + 288]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2033 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_718 + 196]
                            _2035 = mem[_718 + 196]
                            idx = 0
                            while idx < _2035:
                                mem[_2033 + idx + 68] = mem[_718 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2035 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2035 + _2033 + -mem[64] + 68
                            mem[floor32(_2035) + _2033 + 68] = mem[floor32(_2035) + _2033 + -(_2035 % 32) + 100 len _2035 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2035) + _2033 + -mem[64] + 100
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2209 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2209] = ('cd', 36).length
                        mem[_2209 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2209 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2209 + 32
                        while _2209 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2633 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2633 + 128] = ('cd', 36).length
                        mem[_2633 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2633 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2633 + ceil32(('cd', 36).length) + -mem[64] + 160],
                    else:
                        _1981 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1981] = return_data.size
                        mem[_1981 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_718 + 196]
                            _2039 = mem[_718 + 196]
                            idx = 0
                            while idx < _2039:
                                mem[_2037 + idx + 68] = mem[_718 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2039 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2039 + _2037 + -mem[64] + 68
                            mem[floor32(_2039) + _2037 + 68] = mem[floor32(_2039) + _2037 + -(_2039 % 32) + 100 len _2039 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2039) + _2037 + -mem[64] + 100
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_1981 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2210 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2210] = ('cd', 36).length
                        mem[_2210 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2210 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2210 + 32
                        while _2210 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2635 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2635 + 128] = ('cd', 36).length
                        mem[_2635 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2635 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2635 + ceil32(('cd', 36).length) + -mem[64] + 160],
            else:
                _694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_694] = stor14 + 1
                mem[_694 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor14 + 1
                address(tokenByIndex[tokenByIndex.length].field_256) = address(cd[((32 * idx) + cd[4] + 36)])
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                mem[0] = stor14 + 1
                mem[32] = 3
                stor3[stor14 + 1] = tokenByIndex.length
                emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), stor14 + 1);
                if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                    mem[_734] = ('cd', 36).length
                    mem[_734 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_734 + ('cd', 36).length + 32] = 0
                    if not stor3[stor14 + 1]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[mem[64] + 112 len 20]
                    mem[32] = 8
                    mem[0] = sha3(stor14 + 1, 8)
                    stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                    t = sha3(sha3(stor14 + 1, 8))
                    s = _734 + 32
                    while _734 + ('cd', 36).length + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                    while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor14++
                    _2135 = mem[64]
                    mem[mem[64]] = stor14 + 1
                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 96] = msg.sender
                    mem[mem[64] + 64] = 128
                    mem[_2135 + 128] = ('cd', 36).length
                    mem[_2135 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[_2135 + ('cd', 36).length + 160] = 0
                    emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                mem[mem[64] len _2135 + ceil32(('cd', 36).length) + -mem[64] + 160],
                else:
                    _712 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = stor14 + 1
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_677 + s + 32]
                        s = s + 32
                        continue 
                    _1369 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1369 + 32] = mem[_1369 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _712 + 292
                    mem[_712 + 196] = 50
                    mem[_712 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_712 + 398 len 26]
                    if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1414 = mem[_1369]
                    t = _1369 + 32
                    u = mem[64]
                    s = mem[_1369]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_1369])] = mem[_1369 + floor32(mem[_1369]) + -(mem[_1369] % 32) + 64 len mem[_1369] % 32] or Mask(8 * -(mem[_1369] % 32) + 32, -(8 * -(mem[_1369] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1369])])
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1414 + _712 + -mem[64] + 288]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_712 + 196]
                            _2051 = mem[_712 + 196]
                            idx = 0
                            while idx < _2051:
                                mem[_2049 + idx + 68] = mem[_712 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2051 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2051 + _2049 + -mem[64] + 68
                            mem[floor32(_2051) + _2049 + 68] = mem[floor32(_2051) + _2049 + -(_2051 % 32) + 100 len _2051 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2051) + _2049 + -mem[64] + 100
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2213 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2213] = ('cd', 36).length
                        mem[_2213 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2213 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2213 + 32
                        while _2213 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2641 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2641 + 128] = ('cd', 36).length
                        mem[_2641 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2641 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2641 + ceil32(('cd', 36).length) + -mem[64] + 160],
                    else:
                        _1983 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1983] = return_data.size
                        mem[_1983 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2053 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[_712 + 196]
                            _2055 = mem[_712 + 196]
                            idx = 0
                            while idx < _2055:
                                mem[_2053 + idx + 68] = mem[_712 + idx + 228]
                                idx = idx + 32
                                continue 
                            if not _2055 % 32:
                                revert with memory
                                  from mem[64]
                                   len _2055 + _2053 + -mem[64] + 68
                            mem[floor32(_2055) + _2053 + 68] = mem[floor32(_2055) + _2053 + -(_2055 % 32) + 100 len _2055 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_2055) + _2053 + -mem[64] + 100
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_1983 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        _2214 = mem[64]
                        mem[64] = mem[64] + ceil32(('cd', 36).length) + 32
                        mem[_2214] = ('cd', 36).length
                        mem[_2214 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2214 + ('cd', 36).length + 32] = 0
                        if not stor3[stor14 + 1]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                        mem[32] = 8
                        mem[0] = sha3(stor14 + 1, 8)
                        stor8[stor14 + 1].field_0 = (2 * ('cd', 36).length) + 1
                        t = sha3(sha3(stor14 + 1, 8))
                        s = _2214 + 32
                        while _2214 + ('cd', 36).length + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor14 + 1, 8)) + (Mask(251, 0, ('cd', 36).length + 31) >> 5)
                        while sha3(sha3(stor14 + 1, 8)) + (stor8[stor14 + 1].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        stor14++
                        _2643 = mem[64]
                        mem[mem[64]] = stor14 + 1
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 96] = msg.sender
                        mem[mem[64] + 64] = 128
                        mem[_2643 + 128] = ('cd', 36).length
                        mem[_2643 + 160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[_2643 + ('cd', 36).length + 160] = 0
                        emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                                    mem[mem[64] len _2643 + ceil32(('cd', 36).length) + -mem[64] + 160],
        idx = idx + 1
        continue 
}



}
