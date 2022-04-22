contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const sub_7fc4eda8(?) = 480


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of uint256 baseURI;
array of uint256 stor10;
array of uint256 stor11;
array of uint256 stor12;
array of struct stor13;
uint256 price;
uint256 tvl;
address storE6A0;
address feeAddress;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function feeAddress() {
    return feeAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return uint256(tokenByIndex[arg1].field_0)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() {
    return uint256(baseURI[0 len baseURI.length].field_0)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function tvl() {
    return tvl
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storE6A0 != msg.sender:
        revert with 0, 'Pixyz: not the owner'
    feeAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storE6A0 != msg.sender:
        revert with 0, 'Pixyz: not the owner'
    storE6A0 = arg1
}

function pixels(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 64 * 3600
    return stor10[arg1], 
           stor11[arg1],
           stor12[arg1],
           stor13[arg1].field_0 % 16777216,
           address(stor13[arg1].field_24),
           bool(uint8(stor13[arg1].field_184))
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getPixel(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= 480:
        revert with 0, 'Pixies: x too big'
    if arg2 >= 480:
        revert with 0, 'Pixies: y too big'
    require (480 * arg2) + arg1 < 64 * 3600
    return stor10[(480 * arg2) + arg1], 
           stor11[(480 * arg2) + arg1],
           stor12[(480 * arg2) + arg1],
           stor13[(480 * arg2) + arg1].field_0 % 16777216,
           address(stor13[(480 * arg2) + arg1].field_0),
           bool(uint8(stor13[(480 * arg2) + arg1].field_184))
}

function sub_1a55745c(?) {
    require calldata.size - 4 >= 32
    require arg1 < 480
    mem[15456] = storE100[arg1].field_0 % 16777216
    idx = 15456
    s = 0
    while 30816 > idx + 32:
        mem[idx + 32] = storE100[arg1].field_8 * (-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3 % 16777216
        idx = idx + 32
        s = (-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3
        continue 
    idx = 0
    s = 15456
    t = 30816
    while idx < 480:
        mem[t] = mem[s + 29 len 3]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 30816
       len 15360
}

function sub_b1010988(?) {
    require calldata.size - 4 >= 96
    require arg3 == arg3 % 16777216
    if arg1 >= 480:
        revert with 0, 'Pixies: x too big'
    if arg2 >= 480:
        revert with 0, 'Pixies: y too big'
    if not stor3[(480 * arg2) + arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) != msg.sender:
        revert with 0, 'Pixies: you are not the owner'
    require (480 * arg2) + arg1 < 64 * 3600
    stor13[(480 * arg2) + arg1].field_0 % 16777216 = arg3 % 16777216
    require arg2 < 480
    require arg1 < 480
    uint256(stor[(arg1 / 10) + (48 * arg2) + 921612].field_0) = arg3 % 16777216 * 256^(3 * arg1 % 10) or !(16777215 * 256^(3 * arg1 % 10)) and uint256(stor[(arg1 / 10) + (48 * arg2) + 921612].field_0)
    emit 0xdd3ae694: arg1, arg2, arg3 % 16777216
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 'ERC721: approval to current owner'
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function sub_6b4406ba(?) {
    mem[64] = 30816
    mem[15456 len 15360] = call.data[calldata.size len 15360]
    mem[var8001] = 15456
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 15360
        mem[15456 len 15360] = call.data[calldata.size len 15360]
        mem[s + 32] = 15456
        s = s + 32
        idx = idx - 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 15360
    s = _7
    idx = 0
    while idx < 480:
        _9 = mem[64]
        mem[64] = mem[64] + 15360
        mem[_9] = storE100.length
        t = _9
        s = 0
        while _9 + 15360 > t + 32:
            mem[t + 32] = stor[(-144 * 0.03125 / s + 5) + (48 * s) + (-48 * 0.03125 / s + 5 * s) + 921756].field_8 * (-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3 % 16777216
            t = t + 32
            s = (-3 * s + 5 / 32) + s + (-1 * s + 5 / 32 * s) + 3
            continue 
        mem[_9 + 15328] = _9
        t = _9 + 15360
        s = 1438
        continue 
    _10 = mem[64]
    idx = 0
    s = _7
    t = mem[64]
    while idx < 480:
        u = 0
        v = mem[s]
        w = t
        while u < 480:
            mem[w] = mem[v + 29 len 3]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 15360
        continue 
    return memory
      from mem[64]
       len _10 + -mem[64] + (2048 * 3600)
}

function sub_3f2888a9(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3 % 16777216
    if msg.value < price:
        revert with 0, 'Pixies: not enough value to mint'
    if arg1 >= 480:
        revert with 0, 'Pixies: x too big'
    if arg2 >= 480:
        revert with 0, 'Pixies: y too big'
    require not stor3[(480 * arg2) + arg1]
    if not eth.balance(this.address):
        if 0 > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        call storE6A0 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call feeAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if 95 * eth.balance(this.address) / eth.balance(this.address) != 95:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 95 * eth.balance(this.address) / 100 > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        tvl += 95 * eth.balance(this.address) / 100
        call storE6A0 with:
           value 95 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call feeAddress with:
           value eth.balance(this.address) - (95 * eth.balance(this.address) / 100) wei
             gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[(480 * arg2) + arg1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (480 * arg2) + arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[(480 * arg2) + arg1]:
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) = msg.sender
        Mask(96, 0, tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = (480 * arg2) + arg1
        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[(480 * arg2) + arg1] = tokenByIndex.length
    emit Transfer(0, msg.sender, (480 * arg2) + arg1);
    require arg2 < 480
    require arg1 < 480
    uint256(stor[(arg1 / 10) + (48 * arg2) + 921612].field_0) = arg3 % 16777216 * 256^(3 * arg1 % 10) or !(16777215 * 256^(3 * arg1 % 10)) and uint256(stor[(arg1 / 10) + (48 * arg2) + 921612].field_0)
    require (480 * arg2) + arg1 < 64 * 3600
    stor13[(480 * arg2) + arg1].field_0 % 16777216 = arg3 % 16777216
    address(stor13[(480 * arg2) + arg1].field_24) = msg.sender
    stor11[(480 * arg2) + arg1] = msg.value
    Mask(72, 0, stor13[(480 * arg2) + arg1].field_184) = 0
    emit Minted(msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
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

function sub_64339dbf(?) {
    require calldata.size - 4 >= 64
    if arg1 >= 480:
        revert with 0, 'Pixies: x too big'
    if arg2 >= 480:
        revert with 0, 'Pixies: y too big'
    require (480 * arg2) + arg1 < 64 * 3600
    if address(stor13[(480 * arg2) + arg1].field_24) != msg.sender:
        revert with 0, 'Pixies: you are not the owner'
    if not uint8(stor13[(480 * arg2) + arg1].field_184):
        revert with 0, 'Pixies: pixel is not for sale'
    if not stor3[(480 * arg2) + arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) != this.address:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not address(stor13[(480 * arg2) + arg1].field_24):
        revert with 0, 'ERC721: transfer to the zero address'
    approved[(480 * arg2) + arg1] = 0
    if not stor3[(480 * arg2) + arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256), 0, (480 * arg2) + arg1);
    if tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]:
        require tokenOfOwnerByIndex[address(this.address)] - 1 < tokenOfOwnerByIndex[address(this.address)]
        require tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] - 1 < tokenOfOwnerByIndex[address(this.address)]
        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]] = tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]
        tokenOfOwnerByIndex[address(this.address)][1][tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]] = tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]
        require tokenOfOwnerByIndex[address(this.address)]
        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]] = 0
        tokenOfOwnerByIndex[address(this.address)]--
        tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] = 0
    if not tokenOfOwnerByIndex[address(stor13[(480 * arg2) + arg1].field_0)][1][(480 * arg2) + arg1]:
        tokenOfOwnerByIndex[address(stor13[(480 * arg2) + arg1].field_0)]++
        tokenOfOwnerByIndex[address(stor13[(480 * arg2) + arg1].field_0)][tokenOfOwnerByIndex[address(stor13[(480 * arg2) + arg1].field_0)]] = (480 * arg2) + arg1
        tokenOfOwnerByIndex[address(stor13[(480 * arg2) + arg1].field_0)][1][(480 * arg2) + arg1] = tokenOfOwnerByIndex[address(stor13[(480 * arg2) + arg1].field_0)]
    if stor3[(480 * arg2) + arg1]:
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        uint256(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) = address(stor13[(480 * arg2) + arg1].field_24)
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = (480 * arg2) + arg1
        uint256(tokenByIndex[tokenByIndex.length].field_256) = address(stor13[(480 * arg2) + arg1].field_24)
        stor3[(480 * arg2) + arg1] = tokenByIndex.length
    emit Transfer(this.address, address(stor13[(480 * arg2) + arg1].field_24), (480 * arg2) + arg1);
    uint8(stor13[(480 * arg2) + arg1].field_184) = 0
    require (480 * arg2) + arg1 < 64 * 3600
    stor12[(480 * arg2) + arg1] = stor11[(480 * arg2) + arg1]
    emit 0xd5ae1968: msg.sender, arg1, arg2
}

function openTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 >= 480:
        revert with 0, 'Pixies: x too big'
    if arg2 >= 480:
        revert with 0, 'Pixies: y too big'
    require (480 * arg2) + arg1 < 64 * 3600
    if uint8(stor13[(480 * arg2) + arg1].field_184):
        revert with 0, 'Pixies: pixel is not for sale'
    if not stor3[(480 * arg2) + arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) != msg.sender:
        revert with 0, 'Pixies: you are not the owner'
    if not stor3[(480 * arg2) + arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) != msg.sender:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not this.address:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[(480 * arg2) + arg1] = 0
    if not stor3[(480 * arg2) + arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256), 0, (480 * arg2) + arg1);
    if tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1]:
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)][1][tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1]
        require tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
        tokenOfOwnerByIndex[address(msg.sender)]--
        tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1] = 0
    if not tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]:
        tokenOfOwnerByIndex[address(this.address)]++
        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]] = (480 * arg2) + arg1
        tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] = tokenOfOwnerByIndex[address(this.address)]
    if stor3[(480 * arg2) + arg1]:
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) = this.address
        Mask(96, 0, tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = (480 * arg2) + arg1
        address(tokenByIndex[tokenByIndex.length].field_256) = this.address
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[(480 * arg2) + arg1] = tokenByIndex.length
    emit Transfer(msg.sender, this.address, (480 * arg2) + arg1);
    stor12[(480 * arg2) + arg1] = arg3
    uint8(stor13[(480 * arg2) + arg1].field_184) = 1
    emit 0x8f262547: msg.sender, arg3, arg1, arg2
}

function executeTrade(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= 480:
        revert with 0, 'Pixies: x too big'
    if arg2 >= 480:
        revert with 0, 'Pixies: y too big'
    require (480 * arg2) + arg1 < 64 * 3600
    if address(stor13[(480 * arg2) + arg1].field_24) == msg.sender:
        revert with 0, 'Pixies: can't buy own pixie'
    if not uint8(stor13[(480 * arg2) + arg1].field_184):
        revert with 0, 'Pixies: pixel is not for sale'
    if msg.value < stor12[(480 * arg2) + arg1]:
        revert with 0, 'Pixies: insufficient offer price'
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        call feeAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        tvl -= stor11[(480 * arg2) + arg1]
        if not stor3[(480 * arg2) + arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                        0
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) != this.address:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not msg.sender:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[(480 * arg2) + arg1] = 0
        if not stor3[(480 * arg2) + arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                        0
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256), 0, (480 * arg2) + arg1);
        if tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]:
            require tokenOfOwnerByIndex[address(this.address)] - 1 < tokenOfOwnerByIndex[address(this.address)]
            require tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] - 1 < tokenOfOwnerByIndex[address(this.address)]
            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]] = tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]
            tokenOfOwnerByIndex[address(this.address)][1][tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]] = tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]
            require tokenOfOwnerByIndex[address(this.address)]
            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]] = 0
            tokenOfOwnerByIndex[address(this.address)]--
            tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] = 0
        if not tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1]:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (480 * arg2) + arg1
            tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        if stor3[(480 * arg2) + arg1]:
            require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
            address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_416) = 0
        else:
            tokenByIndex.length++
            uint256(tokenByIndex[tokenByIndex.length].field_0) = (480 * arg2) + arg1
            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor3[(480 * arg2) + arg1] = tokenByIndex.length
        emit Transfer(this.address, msg.sender, (480 * arg2) + arg1);
        call address(stor13[(480 * arg2) + arg1].field_24) with:
             gas 2300 wei
    else:
        if 95 * msg.value / msg.value != 95:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 95 * msg.value / 100 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        call feeAddress with:
           value msg.value - (95 * msg.value / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        tvl = tvl + (95 * msg.value / 100) - stor11[(480 * arg2) + arg1]
        if not stor3[(480 * arg2) + arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                        0
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) != this.address:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not msg.sender:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[(480 * arg2) + arg1] = 0
        if not stor3[(480 * arg2) + arg1]:
            revert with 0, 
                        32,
                        41,
                        0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                        0
        require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256), 0, (480 * arg2) + arg1);
        if tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]:
            require tokenOfOwnerByIndex[address(this.address)] - 1 < tokenOfOwnerByIndex[address(this.address)]
            require tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] - 1 < tokenOfOwnerByIndex[address(this.address)]
            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]] = tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]
            tokenOfOwnerByIndex[address(this.address)][1][tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]]] = tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1]
            require tokenOfOwnerByIndex[address(this.address)]
            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)]] = 0
            tokenOfOwnerByIndex[address(this.address)]--
            tokenOfOwnerByIndex[address(this.address)][1][(480 * arg2) + arg1] = 0
        if not tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1]:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = (480 * arg2) + arg1
            tokenOfOwnerByIndex[address(msg.sender)][1][(480 * arg2) + arg1] = tokenOfOwnerByIndex[address(msg.sender)]
        if stor3[(480 * arg2) + arg1]:
            require stor3[(480 * arg2) + arg1] - 1 < tokenByIndex.length
            address(tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[stor3[(480 * arg2) + arg1] - 1].field_416) = 0
        else:
            tokenByIndex.length++
            uint256(tokenByIndex[tokenByIndex.length].field_0) = (480 * arg2) + arg1
            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor3[(480 * arg2) + arg1] = tokenByIndex.length
        emit Transfer(this.address, msg.sender, (480 * arg2) + arg1);
        call address(stor13[(480 * arg2) + arg1].field_24) with:
           value 95 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(232, 0, stor13[(480 * arg2) + arg1].field_24) = Mask(232, 0, msg.sender)
    stor11[(480 * arg2) + arg1] = msg.value
    emit 0x6fe91cfa: msg.sender, msg.value, arg1, arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require calldata.size >= arg4.length + arg4 + 36
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
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
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 29
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 708 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 612 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 872] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 416 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 712 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 740] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 29
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 772 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 676 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 936] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 480 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 776 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 804] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
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
    if not baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length:
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 160] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
            mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 160] = 32
            mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 192] = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            var40001 = ceil32(mem[ceil32(stor8[arg1].length) + 128])
            if ceil32(mem[ceil32(stor8[arg1].length) + 128]) <= mem[ceil32(stor8[arg1].length) + 128]:
                return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
            mem[mem[ceil32(stor8[arg1].length) + 128] + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 224] = 0
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor8[arg1].length) + 128]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = stor8[arg1].length
            if ceil32(stor8[arg1].length) <= stor8[arg1].length:
                _875 = mem[ceil32(stor8[arg1].length) + 128]
                mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
                mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
                if ceil32(_875) > _875:
                    mem[_875 + stor8[arg1].length + 64] = 0
                return 32, mem[stor8[arg1].length + 32 len ceil32(_875) + 32]
            _876 = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(_876) > _876:
                mem[_876 + stor8[arg1].length + 64] = 0
            return 32, mem[stor8[arg1].length + 32 len ceil32(_876) + 32]
        idx = 0
        s = 0
        while idx < uint255(baseURI.length.field_1):
            mem[idx + ceil32(stor8[arg1].length) + 160] = uint256(baseURI[s].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
        var33001 = ceil32(stor8[arg1].length)
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 160] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 192] = mem[ceil32(stor8[arg1].length) + 128]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
        if ceil32(mem[ceil32(stor8[arg1].length) + 128]) <= mem[ceil32(stor8[arg1].length) + 128]:
            return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
        mem[mem[ceil32(stor8[arg1].length) + 128] + stor8[arg1].length + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 224] = 0
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + 128]) + 32], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = '0'
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 224] = '0'
            var33001 = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 257] = mem[ceil32(stor8[arg1].length) + 192]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
                mem[mem[ceil32(stor8[arg1].length) + 192] + ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
        if bool(baseURI.length) == 1:
            idx = 0
            s = 0
            while idx < uint255(baseURI.length.field_1):
                mem[idx + ceil32(stor8[arg1].length) + 224] = uint256(baseURI[s].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 224] = '0'
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 225] = 32
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 257] = mem[ceil32(stor8[arg1].length) + 192]
            mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
                mem[mem[ceil32(stor8[arg1].length) + 192] + ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 289] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + uint255(baseURI.length.field_1) + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
        var34001 = 32
        mem[64] = 1
        _860 = mem[ceil32(stor8[arg1].length) + 192]
        mem[33] = mem[ceil32(stor8[arg1].length) + 192]
        mem[65 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
        if ceil32(_860) > _860:
            mem[_860 + 65] = 0
        return memory
          from mem[64]
           len ceil32(_860) + -mem[64] + 65
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            var40001 = ceil32(s)
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192] = 32
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256] = 0
            return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1623 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1623) > _1623:
                    mem[_1623 + s + 64] = 0
                return 32, mem[s + 32 len ceil32(_1623) + 32]
            _1624 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1624) > _1624:
                mem[_1624 + s + 64] = 0
            return 32, mem[s + 32 len ceil32(_1624) + 32]
    else:
        mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 192] = 32
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 256] = 0
            return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) + 32], 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1627 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1627) > _1627:
                    mem[_1627 + s + 64] = 0
                return 32, mem[s + 32 len ceil32(_1627) + 32]
            _1628 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1628) > _1628:
                mem[_1628 + s + 64] = 0
            return 32, mem[s + 32 len ceil32(_1628) + 32]
    ('eq', ('type', 1, ('stor', ('length', ('name', 'baseURI', 9)))), 1)
    idx = 0
    t = 0
    while idx < uint255(baseURI.length.field_1):
        mem[idx + ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI[t].field_0)
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
    mem[s + ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 192] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
    mem[s + ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[s + ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
    mem[mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + s + ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 256] = 0
    return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(s) + uint255(baseURI.length.field_1) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) + 32], 
}



}
