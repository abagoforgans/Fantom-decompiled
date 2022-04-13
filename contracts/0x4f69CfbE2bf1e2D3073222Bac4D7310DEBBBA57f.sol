contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
mapping of uint8 stor12;
uint8 stor13; offset 16
uint16 maxSupply;
uint256 stor13; offset 16
uint256 sub_74cfaceb;
address stor15;
address stor16;
uint256 stor17;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64455243373231456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[208 len 20]
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function sub_74cfaceb(?) {
    return sub_74cfaceb
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor12[address(arg1)])
}

function tokenURI(uint256 arg1) {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function maxSupply() {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function payAccounts() {
    call stor15 with:
       value 70 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor16 with:
       value 30 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor12[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor12[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x2f4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x6e526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    if not stor12[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x6e4d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if not ownerOf[arg2]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg3.length) + 240 len 20]
    tokenURI[arg2][] = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 32, 41, 0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x654552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 237 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[arg3] != tokenOfOwnerByIndex[address(arg1)] - 1:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
}

function currentPupURI() {
    if not stor17:
        mem[384 len 64] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a613955
        mem[448] = 0x3958646b696d6b546e555a62562f70757070795f64617461, mem[284 len 4] or Mask(32, 224, mem[448])
        mem[476 len 0] = None
        mem[477 len 0] = None
        mem[482] = 32
        mem[514] = mem[352]
        mem[546 len ceil32(mem[352])] = mem[384 len ceil32(mem[352])]
        if not mem[352] % 32:
            return 32, mem[514 len mem[352] + 32]
        mem[floor32(mem[352]) + 546] = mem[floor32(mem[352]) + -(mem[352] % 32) + 578 len mem[352] % 32]
        return Array(len=mem[352], data=mem[546 len floor32(mem[352]) + 32])
    s = 0
    idx = stor17
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = stor17
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _99 = mem[64]
        mem[64] = mem[64] + 128
        mem[_99] = 92
        mem[_99 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 5
        mem[_100 + 32] = '.json'
        _107 = mem[64]
        mem[mem[64] + 32 len 64] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a613955
        mem[mem[64] + 96] = 0x3958646b696d6b546e555a62562f70757070795f64617461, mem[_99 + 124 len 4] or Mask(32, 224, mem[mem[64] + 96])
        _158 = mem[96]
        mem[_107 + 124 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_107 + floor32(mem[96]) + -(mem[96] % 32) + 156 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_158 + _107 + 124 len 0] = None
        _241 = mem[64]
        mem[64] = _158 + _107 + 129
        mem[_158 + _107 + 129] = 32
        mem[_158 + _107 + 161] = mem[_241]
        _249 = mem[_241]
        mem[_158 + _107 + 193 len ceil32(mem[_241])] = mem[_241 + 32 len ceil32(mem[_241])]
        if not _249 % 32:
            return 32, mem[_158 + _107 + 161 len _249 + 32]
        mem[floor32(_249) + _158 + _107 + 193] = mem[floor32(_249) + _158 + _107 + -(_249 % 32) + 225 len _249 % 32]
        return 32, mem[_158 + _107 + 161 len floor32(_249) + 64]
    mem[128 len s] = code.data[14129 len s]
    t = s
    idx = stor17
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _101 = mem[64]
    mem[64] = mem[64] + 128
    mem[_101] = 92
    mem[_101 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
    _102 = mem[64]
    mem[64] = mem[64] + 64
    mem[_102] = 5
    mem[_102 + 32] = '.json'
    _109 = mem[64]
    mem[mem[64] + 32 len 64] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a613955
    mem[mem[64] + 96] = 0x3958646b696d6b546e555a62562f70757070795f64617461, mem[_101 + 124 len 4] or Mask(32, 224, mem[mem[64] + 96])
    _162 = mem[96]
    mem[_109 + 124 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_109 + floor32(mem[96]) + -(mem[96] % 32) + 156 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_162 + _109 + 124 len 0] = None
    _245 = mem[64]
    mem[64] = _162 + _109 + 129
    mem[_162 + _109 + 129] = 32
    mem[_162 + _109 + 161] = mem[_245]
    _252 = mem[_245]
    mem[_162 + _109 + 193 len ceil32(mem[_245])] = mem[_245 + 32 len ceil32(mem[_245])]
    if not _252 % 32:
        return 32, mem[_162 + _109 + 161 len _252 + 32]
    mem[floor32(_252) + _162 + _109 + 193] = mem[floor32(_252) + _162 + _109 + -(_252 % 32) + 225 len _252 % 32]
    return 32, mem[_162 + _109 + 161 len floor32(_252) + 64]
}

function mintGenesis(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if uint8(stor13.field_16):
        revert with 0, 'Genesis pups already minted.'
    idx = 0
    while idx <= 14:
        stor17++
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor17]:
            revert with 0, 'ERC721: token already minted'
        ownerOf[stor17] = arg1
        balanceOf[address(arg1)]++
        emit Transfer(0, arg1, stor17);
        stor6[stor17] = tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor17
        mem[32] = 8
        stor8[stor17] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 7
        tokenByIndex[tokenByIndex.length] = stor17
        if not stor17:
            _60 = mem[64]
            mem[64] = mem[64] + 64
            mem[_60] = 1
            mem[_60 + 32] = '0'
            _61 = mem[64]
            mem[64] = mem[64] + 128
            mem[_61] = 92
            mem[_61 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
            _62 = mem[64]
            mem[64] = mem[64] + 64
            mem[_62] = 5
            mem[_62 + 32] = '.json'
            _63 = mem[64]
            t = _61 + 32
            u = mem[64] + 32
            s = mem[_61]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_61]) + 32] = mem[_61 + floor32(mem[_61]) + -(mem[_61] % 32) + 64 len mem[_61] % 32] or Mask(8 * -(mem[_61] % 32) + 32, -(8 * -(mem[_61] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_61]) + 32])
            _88 = mem[_60]
            t = _60 + 32
            u = mem[64] + 124
            s = mem[_60]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_60]) + 124] = mem[_60 + floor32(mem[_60]) + -(mem[_60] % 32) + 64 len mem[_60] % 32] or Mask(8 * -(mem[_60] % 32) + 32, -(8 * -(mem[_60] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_60]) + 124])
            _158 = mem[_62]
            t = _62 + 32
            u = _88 + mem[64] + 124
            s = mem[_62]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_88 + mem[64] + floor32(mem[_62]) + 124] = mem[_62 + floor32(mem[_62]) + -(mem[_62] % 32) + 64 len mem[_62] % 32] or Mask(8 * -(mem[_62] % 32) + 32, -(8 * -(mem[_62] % 32) + 32) + 256, mem[_88 + mem[64] + floor32(mem[_62]) + 124])
            _232 = mem[64]
            mem[mem[64]] = _158 + _88 + 92
            mem[64] = _158 + _88 + mem[64] + 124
            if not ownerOf[stor17]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[_158 + _88 + _63 + 236 len 20]
            mem[0] = stor17
            mem[32] = 11
            _252 = mem[_232]
            mem[0] = sha3(stor17, 11)
            tokenURI[stor17] = (2 * _252) + 1
            t = sha3(sha3(stor17, 11))
            s = _232 + 32
            while _232 + _252 + 32 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(stor17, 11)) + (Mask(251, 0, _252 + 31) >> 5)
            while sha3(sha3(stor17, 11)) + (tokenURI[stor17].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        else:
            t = 0
            s = stor17
            while s:
                t = t + 1
                s = s / 10
                continue 
            _85 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = stor17
                while s:
                    require u - 1 < mem[_85]
                    mem[u + _85 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _162 = mem[64]
                mem[64] = mem[64] + 128
                mem[_162] = 92
                mem[_162 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 5
                mem[_163 + 32] = '.json'
                _170 = mem[64]
                t = _162 + 32
                u = mem[64] + 32
                s = mem[_162]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_162]) + 32] = mem[_162 + floor32(mem[_162]) + -(mem[_162] % 32) + 64 len mem[_162] % 32] or Mask(8 * -(mem[_162] % 32) + 32, -(8 * -(mem[_162] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_162]) + 32])
                _224 = mem[_85]
                t = _85 + 32
                u = mem[64] + 124
                s = mem[_85]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_170 + floor32(mem[_85]) + 124] = mem[_85 + floor32(mem[_85]) + -(mem[_85] % 32) + 64 len mem[_85] % 32] or Mask(8 * -(mem[_85] % 32) + 32, -(8 * -(mem[_85] % 32) + 32) + 256, mem[_170 + floor32(mem[_85]) + 124])
                _276 = mem[_163]
                t = _163 + 32
                u = _224 + _170 + 124
                s = mem[_163]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_224 + _170 + floor32(mem[_163]) + 124] = mem[_163 + floor32(mem[_163]) + -(mem[_163] % 32) + 64 len mem[_163] % 32] or Mask(8 * -(mem[_163] % 32) + 32, -(8 * -(mem[_163] % 32) + 32) + 256, mem[_224 + _170 + floor32(mem[_163]) + 124])
                _309 = mem[64]
                mem[mem[64]] = _276 + _224 + _170 + -mem[64] + 92
                mem[64] = _276 + _224 + _170 + 124
                if not ownerOf[stor17]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[_276 + _224 + _170 + 236 len 20]
                mem[0] = stor17
                mem[32] = 11
                _318 = mem[_309]
                mem[0] = sha3(stor17, 11)
                tokenURI[stor17] = (2 * _318) + 1
                t = sha3(sha3(stor17, 11))
                s = _309 + 32
                while _309 + _318 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor17, 11)) + (Mask(251, 0, _318 + 31) >> 5)
                while sha3(sha3(stor17, 11)) + (tokenURI[stor17].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                mem[_85 + 32 len t] = code.data[14129 len t]
                u = t
                s = stor17
                while s:
                    require u - 1 < mem[_85]
                    mem[u + _85 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _164 = mem[64]
                mem[64] = mem[64] + 128
                mem[_164] = 92
                mem[_164 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 5
                mem[_165 + 32] = '.json'
                _172 = mem[64]
                t = _164 + 32
                u = mem[64] + 32
                s = mem[_164]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_164]) + 32] = mem[_164 + floor32(mem[_164]) + -(mem[_164] % 32) + 64 len mem[_164] % 32] or Mask(8 * -(mem[_164] % 32) + 32, -(8 * -(mem[_164] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_164]) + 32])
                _228 = mem[_85]
                t = _85 + 32
                u = mem[64] + 124
                s = mem[_85]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_172 + floor32(mem[_85]) + 124] = mem[_85 + floor32(mem[_85]) + -(mem[_85] % 32) + 64 len mem[_85] % 32] or Mask(8 * -(mem[_85] % 32) + 32, -(8 * -(mem[_85] % 32) + 32) + 256, mem[_172 + floor32(mem[_85]) + 124])
                _280 = mem[_165]
                t = _165 + 32
                u = _228 + _172 + 124
                s = mem[_165]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_228 + _172 + floor32(mem[_165]) + 124] = mem[_165 + floor32(mem[_165]) + -(mem[_165] % 32) + 64 len mem[_165] % 32] or Mask(8 * -(mem[_165] % 32) + 32, -(8 * -(mem[_165] % 32) + 32) + 256, mem[_228 + _172 + floor32(mem[_165]) + 124])
                _313 = mem[64]
                mem[mem[64]] = _280 + _228 + _172 + -mem[64] + 92
                mem[64] = _280 + _228 + _172 + 124
                if not ownerOf[stor17]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[_280 + _228 + _172 + 236 len 20]
                mem[0] = stor17
                mem[32] = 11
                _322 = mem[_313]
                mem[0] = sha3(stor17, 11)
                tokenURI[stor17] = (2 * _322) + 1
                t = sha3(sha3(stor17, 11))
                s = _313 + 32
                while _313 + _322 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor17, 11)) + (Mask(251, 0, _322 + 31) >> 5)
                while sha3(sha3(stor17, 11)) + (tokenURI[stor17].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    Mask(240, 0, stor13.field_16) = 1
    return 0
}

function deposit(address arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if tokenByIndex.length >= maxSupply:
        revert with 0, 'Puppies sold out.'
    if arg2:
        if msg.value < 4 * sub_74cfaceb:
            revert with 0, 'Puppy price changed.'
        idx = 0
        while idx < 5:
            stor17++
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor17]:
                revert with 0, 'ERC721: token already minted'
            ownerOf[stor17] = arg1
            balanceOf[address(arg1)]++
            emit Transfer(0, arg1, stor17);
            stor6[stor17] = tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)]++
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor17
            mem[32] = 8
            stor8[stor17] = tokenByIndex.length
            tokenByIndex.length++
            mem[0] = 7
            tokenByIndex[tokenByIndex.length] = stor17
            if not stor17:
                _190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_190] = 1
                mem[_190 + 32] = '0'
                _196 = mem[64]
                mem[64] = mem[64] + 128
                mem[_196] = 92
                mem[_196 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                _197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_197] = 5
                mem[_197 + 32] = '.json'
                _198 = mem[64]
                t = _196 + 32
                u = mem[64] + 32
                s = mem[_196]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_196]) + 32] = mem[_196 + floor32(mem[_196]) + -(mem[_196] % 32) + 64 len mem[_196] % 32] or Mask(8 * -(mem[_196] % 32) + 32, -(8 * -(mem[_196] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_196]) + 32])
                _259 = mem[_190]
                t = _190 + 32
                u = mem[64] + 124
                s = mem[_190]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_198 + floor32(mem[_190]) + 124] = mem[_190 + floor32(mem[_190]) + -(mem[_190] % 32) + 64 len mem[_190] % 32] or Mask(8 * -(mem[_190] % 32) + 32, -(8 * -(mem[_190] % 32) + 32) + 256, mem[_198 + floor32(mem[_190]) + 124])
                _439 = mem[_197]
                t = _197 + 32
                u = _259 + _198 + 124
                s = mem[_197]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_259 + _198 + floor32(mem[_197]) + 124] = mem[_197 + floor32(mem[_197]) + -(mem[_197] % 32) + 64 len mem[_197] % 32] or Mask(8 * -(mem[_197] % 32) + 32, -(8 * -(mem[_197] % 32) + 32) + 256, mem[_259 + _198 + floor32(mem[_197]) + 124])
                _598 = mem[64]
                mem[mem[64]] = _439 + _259 + _198 + -mem[64] + 92
                mem[64] = _439 + _259 + _198 + 124
                if not ownerOf[stor17]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[_439 + _259 + _198 + 236 len 20]
                mem[0] = stor17
                mem[32] = 11
                _628 = mem[_598]
                mem[0] = sha3(stor17, 11)
                tokenURI[stor17] = (2 * _628) + 1
                t = sha3(sha3(stor17, 11))
                s = _598 + 32
                while _598 + _628 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(stor17, 11)) + (Mask(251, 0, _628 + 31) >> 5)
                while sha3(sha3(stor17, 11)) + (tokenURI[stor17].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                t = 0
                s = stor17
                while s:
                    t = t + 1
                    s = s / 10
                    continue 
                _256 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = stor17
                    while s:
                        require u - 1 < mem[_256]
                        mem[u + _256 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _451 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_451] = 92
                    mem[_451 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                    _452 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_452] = 5
                    mem[_452 + 32] = '.json'
                    _459 = mem[64]
                    t = _451 + 32
                    u = mem[64] + 32
                    s = mem[_451]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_451]) + 32] = mem[_451 + floor32(mem[_451]) + -(mem[_451] % 32) + 64 len mem[_451] % 32] or Mask(8 * -(mem[_451] % 32) + 32, -(8 * -(mem[_451] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_451]) + 32])
                    _590 = mem[_256]
                    t = _256 + 32
                    u = _459 + 124
                    s = mem[_256]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_459 + floor32(mem[_256]) + 124] = mem[_256 + floor32(mem[_256]) + -(mem[_256] % 32) + 64 len mem[_256] % 32] or Mask(8 * -(mem[_256] % 32) + 32, -(8 * -(mem[_256] % 32) + 32) + 256, mem[_459 + floor32(mem[_256]) + 124])
                    _710 = mem[_452]
                    t = _452 + 32
                    u = _590 + _459 + 124
                    s = mem[_452]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_590 + _459 + floor32(mem[_452]) + 124] = mem[_452 + floor32(mem[_452]) + -(mem[_452] % 32) + 64 len mem[_452] % 32] or Mask(8 * -(mem[_452] % 32) + 32, -(8 * -(mem[_452] % 32) + 32) + 256, mem[_590 + _459 + floor32(mem[_452]) + 124])
                    _789 = mem[64]
                    mem[mem[64]] = _710 + _590 + _459 + -mem[64] + 92
                    mem[64] = _710 + _590 + _459 + 124
                    if not ownerOf[stor17]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[_710 + _590 + _459 + 236 len 20]
                    mem[0] = stor17
                    mem[32] = 11
                    _798 = mem[_789]
                    mem[0] = sha3(stor17, 11)
                    tokenURI[stor17] = (2 * _798) + 1
                    t = sha3(sha3(stor17, 11))
                    s = _789 + 32
                    while _789 + _798 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor17, 11)) + (Mask(251, 0, _798 + 31) >> 5)
                    while sha3(sha3(stor17, 11)) + (tokenURI[stor17].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    mem[_256 + 32 len t] = code.data[14129 len t]
                    u = t
                    s = stor17
                    while s:
                        require u - 1 < mem[_256]
                        mem[u + _256 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _453 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_453] = 92
                    mem[_453 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                    _454 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_454] = 5
                    mem[_454 + 32] = '.json'
                    _461 = mem[64]
                    t = _453 + 32
                    u = mem[64] + 32
                    s = mem[_453]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_453]) + 32] = mem[_453 + floor32(mem[_453]) + -(mem[_453] % 32) + 64 len mem[_453] % 32] or Mask(8 * -(mem[_453] % 32) + 32, -(8 * -(mem[_453] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_453]) + 32])
                    _594 = mem[_256]
                    t = _256 + 32
                    u = _461 + 124
                    s = mem[_256]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_461 + floor32(mem[_256]) + 124] = mem[_256 + floor32(mem[_256]) + -(mem[_256] % 32) + 64 len mem[_256] % 32] or Mask(8 * -(mem[_256] % 32) + 32, -(8 * -(mem[_256] % 32) + 32) + 256, mem[_461 + floor32(mem[_256]) + 124])
                    _714 = mem[_454]
                    t = _454 + 32
                    u = _594 + _461 + 124
                    s = mem[_454]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_594 + _461 + floor32(mem[_454]) + 124] = mem[_454 + floor32(mem[_454]) + -(mem[_454] % 32) + 64 len mem[_454] % 32] or Mask(8 * -(mem[_454] % 32) + 32, -(8 * -(mem[_454] % 32) + 32) + 256, mem[_594 + _461 + floor32(mem[_454]) + 124])
                    _793 = mem[64]
                    mem[mem[64]] = _714 + _594 + _461 + -mem[64] + 92
                    mem[64] = _714 + _594 + _461 + 124
                    if not ownerOf[stor17]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[_714 + _594 + _461 + 236 len 20]
                    mem[0] = stor17
                    mem[32] = 11
                    _802 = mem[_793]
                    mem[0] = sha3(stor17, 11)
                    tokenURI[stor17] = (2 * _802) + 1
                    t = sha3(sha3(stor17, 11))
                    s = _793 + 32
                    while _793 + _802 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(stor17, 11)) + (Mask(251, 0, _802 + 31) >> 5)
                    while sha3(sha3(stor17, 11)) + (tokenURI[stor17].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
    else:
        if msg.value >= sub_74cfaceb:
            stor17++
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor17]:
                revert with 0, 'ERC721: token already minted'
            ownerOf[stor17] = arg1
            balanceOf[address(arg1)]++
            emit Transfer(0, arg1, stor17);
            stor6[stor17] = tokenOfOwnerByIndex[address(arg1)]
            tokenOfOwnerByIndex[address(arg1)]++
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor17
            mem[32] = 8
            stor8[stor17] = tokenByIndex.length
            tokenByIndex.length++
            mem[0] = 7
            tokenByIndex[tokenByIndex.length] = stor17
            if not stor17:
                mem[384 len 64] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a613955
                mem[448] = 0x3958646b696d6b546e555a62562f70757070795f64617461, mem[284 len 4] or Mask(32, 224, mem[448])
                mem[476 len 0] = None
                mem[477 len 0] = None
                mem[504 len 5] = '.json' % 1099511627776
                if not ownerOf[stor17]:
                    revert with 0, 32, 44, 0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65, mem[594 len 20]
                tokenURI[stor17] = 197
                s = 0
                idx = 384
                while 482 > idx:
                    tokenURI[stor17][s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 4
                while tokenURI[stor17].length + 31 / 32 > idx:
                    tokenURI[stor17][idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = stor17
                while idx:
                    s = s + 1
                    idx = idx / 10
                    continue 
                mem[96] = s
                mem[64] = ceil32(s) + 128
                if not s:
                    t = s
                    idx = stor17
                    while idx:
                        require t - 1 < mem[96]
                        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _263 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_263] = 92
                    mem[_263 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                    _264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_264] = 5
                    mem[_264 + 32] = '.json'
                    _275 = mem[64]
                    mem[mem[64] + 32 len 64] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a613955
                    mem[mem[64] + 96] = 0x3958646b696d6b546e555a62562f70757070795f64617461, mem[_263 + 124 len 4] or Mask(32, 224, mem[mem[64] + 96])
                    _427 = mem[96]
                    mem[mem[64] + 124 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 156 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                    mem[mem[96] + mem[64] + 124 len 0] = None
                    mem[mem[96] + mem[64] + 151 len 5] = '.json' % 1099511627776
                    _702 = mem[64]
                    mem[mem[64]] = mem[96] + 97
                    mem[64] = _427 + mem[64] + 129
                    if not ownerOf[stor17]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[_427 + _275 + 241 len 20]
                    mem[0] = stor17
                    mem[32] = 11
                    _728 = mem[_702]
                    tokenURI[stor17][] = Array(len=_728, data=mem[_702 + 32 len _728])
                else:
                    mem[128 len s] = code.data[14129 len s]
                    t = s
                    idx = stor17
                    while idx:
                        require t - 1 < mem[96]
                        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _265 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_265] = 92
                    mem[_265 + 32 len 92] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a6139553869456b3958646b696d6b546e555a62562f70757070795f64617461
                    _266 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_266] = 5
                    mem[_266 + 32] = '.json'
                    _277 = mem[64]
                    mem[mem[64] + 32 len 64] = 0x6e68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d56754d64467359354548547946575872474a5858637a765a613955
                    mem[mem[64] + 96] = 0x3958646b696d6b546e555a62562f70757070795f64617461, mem[_265 + 124 len 4] or Mask(32, 224, mem[mem[64] + 96])
                    _431 = mem[96]
                    mem[_277 + 124 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_277 + floor32(mem[96]) + -(mem[96] % 32) + 156 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                    mem[_431 + _277 + 124 len 0] = None
                    mem[_431 + _277 + 151 len 5] = '.json' % 1099511627776
                    _706 = mem[64]
                    mem[mem[64]] = _431 + _277 + -mem[64] + 97
                    mem[64] = _431 + _277 + 129
                    if not ownerOf[stor17]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                    mem[_431 + _277 + 241 len 20]
                    mem[0] = stor17
                    mem[32] = 11
                    _732 = mem[_706]
                    tokenURI[stor17][] = Array(len=_732, data=mem[_706 + 32 len _732])
    call stor15 with:
       value 70 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor16 with:
       value 30 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if tokenByIndex.length <= 0:
        sub_74cfaceb = 2 * 10^17
    else:
        if tokenByIndex.length <= 250:
            sub_74cfaceb = 5 * 10^16
        else:
            if tokenByIndex.length <= 500:
                sub_74cfaceb = 10^17
            else:
                if tokenByIndex.length > 750:
                    sub_74cfaceb = 2 * 10^17
                else:
                    sub_74cfaceb = 15 * 10^16
}



}
