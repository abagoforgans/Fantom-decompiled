contract main {




// =====================  Runtime code  =====================


#
#  - mintNFT(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - changeName(uint256 arg1, string arg2)
#
const sub_6337e143(?) = 32, 64, 0x6e313963393663393935346566343966653236383433663662633139623864643561363630363364663234623365656361663863306566353664356139653735

const baseTokenURI = Array(len=35, data=0x3568747470733a2f2f6c756e6172726f636b6574732e6172742f6170692f746f6b656e, mem[163 len 29], mem[221 len 3])

const REVEAL_TIMESTAMP = 1617052546

const NAME_CHANGE_PRICE = 1337 * 10^18

const SALE_START_TIMESTAMP = 1616793346

const MAX_NFT_SUPPLY = 13337


address owner;
mapping of uint8 stor1;
uint256 startingIndexBlock;
uint256 startingIndex;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor6;
mapping of address approved;
array of uint256 tokenNameByIndex;
mapping of uint8 stor10;
mapping of uint8 stor11;
array of uint256 name;
array of uint256 symbol;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor6[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
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

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor6[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor6[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor6[arg1] - 1].field_256)
}

function tokenNameByIndex(uint256 arg1) {
    return tokenNameByIndex[arg1][0 len tokenNameByIndex[arg1].length]
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

function isMintedBeforeReveal(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function startingIndex() {
    return startingIndex
}

function startingIndexBlock() {
    return startingIndexBlock
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor11[address(arg1)][address(arg2)])
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
    stor11[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function getNFTPrice() {
    if block.timestamp < 1616793346:
        revert with 0, 'Sale has not started'
    if tokenByIndex.length >= 13337:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 13336:
        return 60000 * 10^18
    if tokenByIndex.length >= 13333:
        return (25 * 10^17 * 3600)
    if tokenByIndex.length >= 13000:
        return 3000 * 10^18
    if tokenByIndex.length >= 10000:
        return 1000 * 10^18
    if tokenByIndex.length >= 7000:
        return 500 * 10^18
    if tokenByIndex.length < 4000:
        return 50 * 10^18
    return 100 * 10^18
}

function finalizeStartingIndex() {
    if startingIndex:
        revert with 0, 'Starting index is already set'
    if not startingIndexBlock:
        revert with 0, 'Starting index block must be set'
    startingIndex = block.hash(startingIndexBlock) % 13337
    if startingIndexBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - startingIndexBlock > 255:
        startingIndex = block.hash(block.number - 1) % 13337
    if not startingIndex:
        if startingIndex + 1 < startingIndex:
            revert with 0, 'SafeMath: addition overflow'
        startingIndex++
}

function validateName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length < 1:
        mem[ceil32(arg1.length) + 128] = 0
    else:
        if arg1.length > 25:
            mem[ceil32(arg1.length) + 128] = 0
        else:
            require 0 < arg1.length
            require arg1.length - 1 < arg1.length
            require 0 < arg1.length
            if 0 >= arg1.length:
                mem[ceil32(arg1.length) + 128] = 1
            else:
                require 0 < arg1.length
                mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor6[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor6[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor6[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x654552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor6[arg2] - 1].field_256) != msg.sender:
        if not stor11[address(stor5[stor6[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor6[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor6[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor6[arg2] - 1].field_256), arg1, arg2);
}

function toLower(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 160 len arg1.length] = call.data[calldata.size len arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[idx + ceil32(arg1.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    mem[(2 * ceil32(arg1.length)) + 160] = 32
    mem[(2 * ceil32(arg1.length)) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + 224 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        return memory
          from (2 * ceil32(arg1.length)) + 160
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 64
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (2 * ceil32(arg1.length)) + 224] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + (2 * ceil32(arg1.length)) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 256 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    return memory
      from (2 * ceil32(arg1.length)) + 160
       len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor6[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor6[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor6[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor6[arg3] - 1].field_256) != msg.sender:
        if not stor6[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor11[address(stor5[stor6[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor6[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor6[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor6[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor6[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor6[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor6[arg3] - 1].field_256), 0, arg3);
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
    if stor6[arg3]:
        require stor6[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor6[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function isNameReserved(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[64] = (2 * ceil32(arg1.length)) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[idx + ceil32(arg1.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        _39 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[(2 * ceil32(arg1.length)) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[(2 * ceil32(arg1.length)) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[(2 * ceil32(arg1.length)) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160])
        mem[_39 + (2 * ceil32(arg1.length)) + 160] = 9
        mem[(2 * ceil32(arg1.length)) + 160] = bool(stor[sha3(mem[(2 * ceil32(arg1.length)) + 160 len _39 + 32])])
    else:
        mem[ceil32(arg1.length) + 160 len arg1.length] = call.data[calldata.size len arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[idx + ceil32(arg1.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        _42 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[(2 * ceil32(arg1.length)) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[(2 * ceil32(arg1.length)) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[(2 * ceil32(arg1.length)) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160])
        mem[_42 + (2 * ceil32(arg1.length)) + 160] = 9
        mem[(2 * ceil32(arg1.length)) + 160] = bool(stor[sha3(mem[(2 * ceil32(arg1.length)) + 160 len _42 + 32])])
    return memory
      from (2 * ceil32(arg1.length)) + 160
       len 32
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 6
    if not stor6[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = 35
    mem[128 len 35] = 0x3568747470733a2f2f6c756e6172726f636b6574732e6172742f6170692f746f6b656e
    if not arg1:
        mem[384 len 36] = call.data[calldata.size len 36]
        idx = 0
        s = 0
        while idx < 35:
            require idx < 35
            require s < 36
            mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 35
        while idx < 1:
            require idx < 1
            require s < 36
            mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 36
        while idx < 0:
            require idx < 0
            require s < 36
            mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 36
        while idx < 0:
            require idx < 0
            require s < 36
            mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 36
        while idx < 0:
            require idx < 0
            require s < 36
            mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=36, data=mem[384], mem[444 len 4])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[192]
            mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _266 = mem[64]
        mem[64] = mem[64] + 32
        mem[_266] = 0
        _267 = mem[64]
        mem[64] = mem[64] + 32
        mem[_267] = 0
        _268 = mem[64]
        mem[64] = mem[64] + 32
        mem[_268] = 0
        _281 = mem[192]
        _282 = mem[96]
        require mem[96] + mem[192] <= test266151307()
        _290 = mem[64]
        mem[mem[64]] = mem[96] + mem[192]
        mem[64] = mem[64] + floor32(_282 + _281 + 31) + 32
        if not _282 + _281:
            _426 = mem[96]
            idx = 0
            s = 0
            while idx < _426:
                require idx < mem[96]
                require s < mem[_290]
                mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _572 = mem[192]
            idx = 0
            s = _426
            while idx < _572:
                require idx < mem[192]
                require s < mem[_290]
                mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _572 = mem[192]
                idx = idx + 1
                s = s + 1
                continue 
            _694 = mem[_266]
            idx = 0
            s = _426 + _572
            while idx < _694:
                require idx < mem[_266]
                require s < mem[_290]
                mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _694 = mem[_266]
                idx = idx + 1
                s = s + 1
                continue 
            _792 = mem[_267]
            idx = 0
            s = _426 + _572 + _694
            while idx < _792:
                require idx < mem[_267]
                require s < mem[_290]
                mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _792 = mem[_267]
                idx = idx + 1
                s = s + 1
                continue 
            _860 = mem[_268]
            idx = 0
            s = _426 + _572 + _694 + _792
            while idx < _860:
                require idx < mem[_268]
                require s < mem[_290]
                mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                _860 = mem[_268]
                idx = idx + 1
                s = s + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_290]
            _878 = mem[_290]
            mem[mem[64] + 64 len ceil32(mem[_290])] = mem[_290 + 32 len ceil32(mem[_290])]
            if not _878 % 32:
                return 32, mem[mem[64] + 32 len _878 + 32]
            mem[floor32(_878) + mem[64] + 64] = mem[floor32(_878) + mem[64] + -(_878 % 32) + 96 len _878 % 32]
            return 32, mem[mem[64] + 32 len floor32(_878) + 64]
        mem[_290 + 32 len _282 + _281] = call.data[calldata.size len _282 + _281]
        _427 = mem[96]
        idx = 0
        s = 0
        while idx < _427:
            require idx < mem[96]
            require s < mem[_290]
            mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _573 = mem[192]
        idx = 0
        s = _427
        while idx < _573:
            require idx < mem[192]
            require s < mem[_290]
            mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _573 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _695 = mem[_266]
        idx = 0
        s = _427 + _573
        while idx < _695:
            require idx < mem[_266]
            require s < mem[_290]
            mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _695 = mem[_266]
            idx = idx + 1
            s = s + 1
            continue 
        _793 = mem[_267]
        idx = 0
        s = _427 + _573 + _695
        while idx < _793:
            require idx < mem[_267]
            require s < mem[_290]
            mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _793 = mem[_267]
            idx = idx + 1
            s = s + 1
            continue 
        _861 = mem[_268]
        idx = 0
        s = _427 + _573 + _695 + _793
        while idx < _861:
            require idx < mem[_268]
            require s < mem[_290]
            mem[s + _290 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _861 = mem[_268]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_290]
        _881 = mem[_290]
        mem[mem[64] + 64 len ceil32(mem[_290])] = mem[_290 + 32 len ceil32(mem[_290])]
        if not _881 % 32:
            return 32, mem[mem[64] + 32 len _881 + 32]
        mem[floor32(_881) + mem[64] + 64] = mem[floor32(_881) + mem[64] + -(_881 % 32) + 96 len _881 % 32]
        return 32, mem[mem[64] + 32 len floor32(_881) + 64]
    mem[224 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[192]
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _269 = mem[64]
    mem[64] = mem[64] + 32
    mem[_269] = 0
    _270 = mem[64]
    mem[64] = mem[64] + 32
    mem[_270] = 0
    _271 = mem[64]
    mem[64] = mem[64] + 32
    mem[_271] = 0
    _286 = mem[192]
    _287 = mem[96]
    require mem[96] + mem[192] <= test266151307()
    _291 = mem[64]
    mem[mem[64]] = mem[96] + mem[192]
    mem[64] = mem[64] + floor32(_287 + _286 + 31) + 32
    if not _287 + _286:
        _428 = mem[96]
        idx = 0
        s = 0
        while idx < _428:
            require idx < mem[96]
            require s < mem[_291]
            mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _574 = mem[192]
        idx = 0
        s = _428
        while idx < _574:
            require idx < mem[192]
            require s < mem[_291]
            mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _574 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _696 = mem[_269]
        idx = 0
        s = _428 + _574
        while idx < _696:
            require idx < mem[_269]
            require s < mem[_291]
            mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _696 = mem[_269]
            idx = idx + 1
            s = s + 1
            continue 
        _794 = mem[_270]
        idx = 0
        s = _428 + _574 + _696
        while idx < _794:
            require idx < mem[_270]
            require s < mem[_291]
            mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _794 = mem[_270]
            idx = idx + 1
            s = s + 1
            continue 
        _862 = mem[_271]
        idx = 0
        s = _428 + _574 + _696 + _794
        while idx < _862:
            require idx < mem[_271]
            require s < mem[_291]
            mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            _862 = mem[_271]
            idx = idx + 1
            s = s + 1
            continue 
        _882 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_291]
        _884 = mem[_291]
        mem[mem[64] + 64 len ceil32(mem[_291])] = mem[_291 + 32 len ceil32(mem[_291])]
        if not _884 % 32:
            return 32, mem[mem[64] + 32 len _884 + 32]
        mem[floor32(_884) + mem[64] + 64] = mem[floor32(_884) + mem[64] + -(_884 % 32) + 96 len _884 % 32]
        return memory
          from mem[64]
           len floor32(_884) + _882 + -mem[64] + 96
    mem[_291 + 32 len _287 + _286] = call.data[calldata.size len _287 + _286]
    _429 = mem[96]
    idx = 0
    s = 0
    while idx < _429:
        require idx < mem[96]
        require s < mem[_291]
        mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _575 = mem[192]
    idx = 0
    s = _429
    while idx < _575:
        require idx < mem[192]
        require s < mem[_291]
        mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _575 = mem[192]
        idx = idx + 1
        s = s + 1
        continue 
    _697 = mem[_269]
    idx = 0
    s = _429 + _575
    while idx < _697:
        require idx < mem[_269]
        require s < mem[_291]
        mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _697 = mem[_269]
        idx = idx + 1
        s = s + 1
        continue 
    _795 = mem[_270]
    idx = 0
    s = _429 + _575 + _697
    while idx < _795:
        require idx < mem[_270]
        require s < mem[_291]
        mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _795 = mem[_270]
        idx = idx + 1
        s = s + 1
        continue 
    _863 = mem[_271]
    idx = 0
    s = _429 + _575 + _697 + _795
    while idx < _863:
        require idx < mem[_271]
        require s < mem[_291]
        mem[s + _291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        _863 = mem[_271]
        idx = idx + 1
        s = s + 1
        continue 
    _885 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_291]
    _887 = mem[_291]
    mem[mem[64] + 64 len ceil32(mem[_291])] = mem[_291 + 32 len ceil32(mem[_291])]
    if not _887 % 32:
        return 32, mem[mem[64] + 32 len _887 + 32]
    mem[floor32(_887) + mem[64] + 64] = mem[floor32(_887) + mem[64] + -(_887 % 32) + 96 len _887 % 32]
    return memory
      from mem[64]
       len floor32(_887) + _885 + -mem[64] + 96
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor6[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor6[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor6[arg3] - 1 < tokenByIndex.length
    if msg.sender == address(tokenByIndex[stor6[arg3] - 1].field_256):
        if not stor6[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor6[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor6[arg3] - 1].field_256) != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor6[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor6[arg3] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor6[arg3] - 1].field_256), 0, arg3);
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
        if stor6[arg3]:
            require stor6[arg3] - 1 < tokenByIndex.length
            address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
            Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
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
            uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
            address(tokenByIndex[tokenByIndex.length].field_256) = arg2
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor6[arg3] = tokenByIndex.length
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
        if not stor6[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor6[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor6[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor6[arg3] - 1].field_256) != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor6[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor6[arg3] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor6[arg3] - 1].field_256), 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor6[arg3]:
                        require stor6[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
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
                        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor6[arg3] = tokenByIndex.length
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
                    if stor6[arg3]:
                        require stor6[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor6[arg3] = tokenByIndex.length
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
                    if stor6[arg3]:
                        require stor6[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
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
                        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor6[arg3] = tokenByIndex.length
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
                    if stor6[arg3]:
                        require stor6[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
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
                        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor6[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
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
            if not stor11[address(stor5[stor6[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor6[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor6[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor6[arg3] - 1].field_256) != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor6[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor6[arg3] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor6[arg3] - 1].field_256), 0, arg3);
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
            if stor6[arg3]:
                require stor6[arg3] - 1 < tokenByIndex.length
                address(tokenByIndex[stor6[arg3] - 1].field_256) = arg2
                Mask(96, 0, tokenByIndex[stor6[arg3] - 1].field_416) = 0
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
                uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
                address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor6[arg3] = tokenByIndex.length
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
